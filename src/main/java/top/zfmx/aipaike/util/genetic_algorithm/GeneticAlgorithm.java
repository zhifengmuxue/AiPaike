package top.zfmx.aipaike.util.genetic_algorithm;

import lombok.AllArgsConstructor;
import lombok.Data;
import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.entity.Schedule;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

/**
 * 主体算法
 *
 * @author lima
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class GeneticAlgorithm {
    // 算法参数
    private final int popSize;
    private final double mutProb;
    private final int eliteCount;
    private final int maxIter;
    private final double crossProb;

    // 时间配置常量
    private static final int MAX_WEEK_DAYS = 5;
    private static final int MIN_TIMESLOT = 1;
    private static final int EVENING_TIMESLOT = 9;


    public Population initPopulation(List<Schedule> schedules, List<Classroom> classrooms, List<Course> courses) {
        Random rand = new Random();
        Map<String, Course> courseMap = createCourseMap(courses);

        List<Individual> individuals = IntStream.range(0, popSize)
                .mapToObj(i -> createIndividual(schedules, classrooms, courseMap, rand))
                .collect(Collectors.toList());

        return new Population(individuals);
    }

    /* 基因构建逻辑 */
    private Gene buildGene(Schedule schedule, Course course, Random rand) {
        int consecutiveSections = schedule.getConsecutiveSections();
        int weeklyOccurrences = schedule.getWeekTimes() / consecutiveSections;

        List<Integer> weekDays = new ArrayList<>();
        List<Integer> slotBegins = new ArrayList<>();
        List<Integer> slotEnds = new ArrayList<>();

        generateScheduleTimes(schedule, weeklyOccurrences, weekDays, slotBegins, slotEnds, rand);
        handleRemainingSections(schedule, consecutiveSections, weekDays, slotBegins, slotEnds, rand);

        return new Gene(schedule, course, weekDays, slotBegins, slotEnds);
    }

    /* 分配教室逻辑 */
    private Gene assignClassroom(Gene gene, List<Classroom> classrooms, Random rand) {
        List<String> matchedRooms = classrooms.stream()
                .filter(c -> c.getCampus().equals(gene.getSchedule().getCampus()))
                .filter(c -> c.getRoomType().equals(gene.getCourse().getRoomType()))
                .filter(c -> c.getMaxCapacity() >= gene.getSchedule().getStudentCount())
                .map(Classroom::getRoomId)
                .toList();

        if (!matchedRooms.isEmpty()) {
            gene.setRoomId(matchedRooms.get(rand.nextInt(matchedRooms.size())));
            return gene;
        }
        return null;
    }

    /* 进化过程 */
    void evolve(Population population, List<Classroom> classrooms) {
        for (int generation = 0; generation < maxIter; generation++) {
            List<Double> fitnessValues = calculateFitnessForPopulation(population, classrooms);
            Population newPopulation = createNewPopulation(population, fitnessValues, classrooms);
            population = newPopulation;
        }
    }

    /* 适应度计算 */
    private List<Double> calculateFitnessForPopulation(Population population, List<Classroom> classrooms) {
        return population.getIndividuals().stream()
                .map(ind -> calculateFitness(ind, classrooms))
                .collect(Collectors.toList());
    }

    /* 新一代种群创建 */
    private Population createNewPopulation(Population population, List<Double> fitnessValues, List<Classroom> classrooms) {
        Population newPopulation = new Population();
        newPopulation.setIndividuals(selectElites(population, fitnessValues));

        while (newPopulation.getIndividuals().size() < popSize) {
            Individual parent1 = rouletteWheelSelection(population, fitnessValues);
            Individual parent2 = rouletteWheelSelection(population, fitnessValues);
            Individual child = performCrossover(parent1, parent2);
            mutate(child);
            newPopulation.getIndividuals().add(child);
        }
        return newPopulation;
    }

    /* 精英选择 */
    private List<Individual> selectElites(Population population, List<Double> fitnessValues) {
        return sortByFitness(population, fitnessValues).subList(0, eliteCount);
    }

    /* 交叉操作 */
    private Individual performCrossover(Individual parent1, Individual parent2) {
        List<Gene> parent1Genes = parent1.getGenes();
        List<Gene> parent2Genes = parent2.getGenes();
        int crossoverPoint = new Random().nextInt(parent1Genes.size());

        List<Gene> childGenes = new ArrayList<>(parent1Genes.subList(0, crossoverPoint));
        childGenes.addAll(parent2Genes.subList(crossoverPoint, parent2Genes.size()));

        return new Individual(childGenes);
    }


    /* 个体创建逻辑 */
    private Individual createIndividual(List<Schedule> schedules, List<Classroom> classrooms,
                                        Map<String, Course> courseMap, Random rand) {
        List<Gene> genes = new ArrayList<>();

        for (Schedule schedule : schedules) {
            Course matchedCourse = courseMap.get(schedule.getCourseId());
            if (matchedCourse == null) continue;

            Gene gene = buildGene(schedule, matchedCourse, rand);
            Optional.ofNullable(assignClassroom(gene, classrooms, rand))
                    .ifPresent(genes::add);
        }
        return new Individual(genes);
    }


    /**
     * 生成排课的时间段
     *
     * @param schedule          排课信息
     * @param weeklyOccurrences 每周上课次数
     * @param weekDays          存储星期几
     * @param slotBegins        存储起始时间
     * @param slotEnds          存储结束时间
     * @param rand              随机数生成器
     */
    private void generateScheduleTimes(Schedule schedule, int weeklyOccurrences,
                                       List<Integer> weekDays, List<Integer> slotBegins,
                                       List<Integer> slotEnds, Random rand) {
        int consecutiveSections = schedule.getConsecutiveSections();

        for (int k = 0; k < weeklyOccurrences; k++) {
            int weekDay = rand.nextInt(5) + 1;
            int slotBegin = beginRandom(consecutiveSections);
            int slotEnd = slotBegin + consecutiveSections - 1;

            // 存储到三个独立列表
            weekDays.add(weekDay);
            slotBegins.add(slotBegin);
            slotEnds.add(slotEnd);
        }

        // 处理剩余的部分，如果上课时间不是整除consecutiveSections
        if (schedule.getWeekTimes() % consecutiveSections != 0 && consecutiveSections == 4) {
            int remainingOccurrences = schedule.getWeekTimes() % consecutiveSections;
            int weekDay = rand.nextInt(5) + 1;
            int slotBegin = beginRandom(remainingOccurrences);
            int slotEnd = slotBegin + remainingOccurrences - 1;
            weekDays.add(weekDay);
            slotBegins.add(slotBegin);
            slotEnds.add(slotEnd);
        } else if (schedule.getWeekTimes() % consecutiveSections != 0 && consecutiveSections == 2) {
            int weekDay = rand.nextInt(5) + 1;
            int slotBegin = beginRandom(3);
            int slotEnd = slotBegin + 2;
            weekDays.set(weekDays.size() - 1, weekDay);
            slotBegins.set(slotBegins.size() - 1, slotBegin);
            slotEnds.set(slotEnds.size() - 1, slotEnd);
        }

    }


    /**
     * 开课时间
     *
     * @param weeklyScheduleCourseTimeslot 连拍节次
     * @return 随机数
     */
    private static int beginRandom(int weeklyScheduleCourseTimeslot) {
        Random random = new Random();
        // 处理输入不在 1 - 4 范围内的情况
        return switch (weeklyScheduleCourseTimeslot) {
            case 1 -> random.nextInt(8) + 1;
            case 2 -> {
                int[] numbers2 = {1, 3, 5, 7};
                yield numbers2[random.nextInt(numbers2.length)];
            }
            case 3 -> {
                int[] numbers3 = {1, 2, 5, 6};
                yield numbers3[random.nextInt(numbers3.length)];
            }
            case 4 -> {
                int[] numbers4 = {1, 5};
                yield numbers4[random.nextInt(numbers4.length)];
            }
            default -> throw new IllegalArgumentException("连排节次必须在 1 到 4 之间。");
        };
    }

    private Individual rouletteWheelSelection(Population population, List<Double> fitnessValues) {
        double totalWeight = 0.0;
        List<Individual> individuals = population.getIndividuals();
        List<Double> weights = new ArrayList<>();

        // 计算权重总和（使用倒数保证适应度值越小概率越高）
        for (Double f : fitnessValues) {
            double weight = 1.0 / (f + 1.0); // +1 防止除零
            weights.add(weight);
            totalWeight += weight;
        }

        // 生成随机数
        double randomValue = new Random().nextDouble() * totalWeight;
        double currentSum = 0.0;

        // 遍历种群寻找中选个体
        for (int i = 0; i < popSize; i++) {
            currentSum += weights.get(i);
            if (currentSum >= randomValue) {
                return individuals.get(i);
            }
        }

        // 兜底返回最后一个个体
        return individuals.get(popSize - 1);
    }

    // 按适应度排序种群（升序）
    private List<Individual> sortByFitness(Population population, List<Double> fitnessValues) {
        // 获取种群大小，并验证数据一致性
        int popSize = fitnessValues.size();
        if (popSize != population.getIndividuals().size()) {
            throw new IllegalArgumentException("适应度值数量与种群个体数不匹配");
        }

        // 创建索引列表（Java 8 简洁写法）
        List<Integer> indices = new ArrayList<>(popSize);
        for (int i = 0; i < popSize; i++) {
            indices.add(i);
        }

        // 按适应度值升序排序索引（低 -> 高）
        indices.sort(Comparator.comparingDouble(fitnessValues::get));

        // 构建排序后的个体列表
        List<Individual> sorted = new ArrayList<>(popSize);
        for (int index : indices) {
            sorted.add(population.getIndividuals().get(index));
        }

        return sorted;
    }


    private static boolean hasConflict(Gene gene1, Gene gene2) {
        // 检查周次是否重叠
        List<String> classes1 = gene1.getSchedule().getClasses();
        List<String> classes2 = gene2.getSchedule().getClasses();
        boolean result = false;
        for (int i = 0; i < gene1.getSlotBegins().size(); i++) {
            for (int j = 0; j < gene2.getSlotBegins().size(); j++) {
                if ((gene1.getSlotBegins().get(i) <= gene2.getSlotEnds().get(j) || gene2.getSlotBegins().get(j) <= gene1.getSlotEnds().get(i))
                        && Objects.equals(gene1.getWeekDays().get(i), gene2.getWeekDays().get(j))) {
                    if (classes1.stream().anyMatch(classes2::contains) || Objects.equals(gene1.getSchedule().getTeacherId(), gene2.getSchedule().getTeacherId()) || Objects.equals(gene1.getRoomId(), gene2.getRoomId())) {
                        result = true;
                        break;
                    }
                }
            }

        }
        return result;

    }


    private double calculateFitness(Individual individual, List<Classroom> classrooms) {
        int fitness = 0;
        List<Gene> genes = individual.getGenes();
        for (int i = 0; i < genes.size(); i++) {

            for (int k = 0; k < genes.get(i).getSlotBegins().size(); k++) {
                if (genes.get(i).getSlotBegins().get(k) == 1) {
                    fitness += 1;
                }
                if (genes.get(i).getCourse().getCourseName().contains("体育")) {
                    fitness += 2;
                }

            }
            for (int j = i + 1; j < genes.size(); j++) {
                Gene gene1 = genes.get(i);
                Gene gene2 = genes.get(j);
                if ((gene1.getSchedule().getWeekBegin() <= gene2.getSchedule().getWeekEnd()) ||
                        (gene1.getSchedule().getWeekEnd() >= gene2.getSchedule().getWeekBegin())) {
                    if (hasConflict(gene1, gene2)) {
                        fitness += 5;
                    }

                }
            }
        }

        return fitness;
    }

    // 交叉操作
    private Individual crossover(Individual parent1, Individual parent2) {
        List<Gene> childGenes = new ArrayList<>();
        List<Gene> parent1Genes = parent1.getGenes();
        List<Gene> parent2Genes = parent2.getGenes();

        // 随机选择交叉点
        int crossoverPoint = new Random().nextInt(parent1Genes.size());

        // 前半部分来自parent1，后半部分来自parent2
        for (int i = 0; i < crossoverPoint; i++) {
            childGenes.add(parent1Genes.get(i));
        }
        for (int i = crossoverPoint; i < parent2Genes.size(); i++) {
            childGenes.add(parent2Genes.get(i));
        }

        return new Individual(childGenes);
    }

    // 变异操作
    private void mutate(Individual individual) {
        // 获取个体的所有基因
        List<Gene> genes = individual.getGenes();
        if (genes.isEmpty()) {
            return;
        }

        // 随机选择一个基因进行变异
        Random rand = new Random();
        int mutationPoint = rand.nextInt(genes.size());
        Gene geneToMutate = genes.get(mutationPoint);

        // 根据变异概率决定是否执行变异
        if (rand.nextDouble() < mutProb) {
            // 生成新的星期列表
            List<Integer> newWeekDays = new ArrayList<>();

            // 遍历原周数长度
            for (int i = 0; i < geneToMutate.getWeekDays().size(); i++) {
                // 随机生成新星期 (1-5)
                int newWeekDay = rand.nextInt(5) + 1;
                newWeekDays.add(newWeekDay);
            }

            // 生成新的时间段列表
            List<Integer> newSlotBegins = new ArrayList<>();
            List<Integer> newSlotEnds = new ArrayList<>();

            // 遍历原时间段长度
            for (int i = 0; i < geneToMutate.getSlotBegins().size(); i++) {
                int courseLength = geneToMutate.getSlotEnds().get(i) - geneToMutate.getSlotBegins().get(i);
                // 生成新起始时间
                int newSlotBegin = beginRandom(courseLength + 1);

                // 计算新结束时间
                int newSlotEnd = newSlotBegin + courseLength;

                newSlotBegins.add(newSlotBegin);
                newSlotEnds.add(newSlotEnd);
            }

            // 创建新基因并替换原基因
            Gene mutatedGene = new Gene(
                    geneToMutate.getSchedule(),
                    geneToMutate.getCourse(),
                    newWeekDays,
                    newSlotBegins,
                    newSlotEnds
            );
            genes.set(mutationPoint, mutatedGene);
        }
    }

    public Individual getBestIndividual(Population population, List<Classroom> classrooms) {
        Individual bestIndividual = null;
        double minFitness = Double.MAX_VALUE;

        // 遍历所有个体寻找最优解
        for (int i = 0; i < population.getIndividuals().size(); i++) {
            Individual current = population.getIndividuals().get(i);
            double currentFitness = calculateFitness(current, classrooms);

            if (currentFitness < minFitness) {
                minFitness = currentFitness;
                bestIndividual = current;
            }
        }

        return bestIndividual;
    }

    // 新增方法：检测并调整冲突到晚上，将最优解输入，遍历其代码看他是否存在冲突，有冲突就调到当天晚上
    static void adjustConflictsToEvening(Individual bestIndividual) {
        List<Gene> genes = bestIndividual.getGenes();

        for (int i = 0; i < genes.size(); i++) {
            for (int j = i + 1; j < genes.size(); j++) {
                Gene gene1 = genes.get(i);
                Gene gene2 = genes.get(j);
                if ((gene1.getSchedule().getWeekBegin() <= gene2.getSchedule().getWeekEnd()) ||
                        (gene1.getSchedule().getWeekEnd() >= gene2.getSchedule().getWeekBegin())) {
                    if (hasConflict(gene1, gene2)) {
                        adjustGeneToEvening(gene1, gene2);

                    }
                }
            }
        }

    }

    // 新增方法：调整单个Gene到晚上
    private static void adjustGeneToEvening(Gene gene1, Gene gene2) {
        List<String> classes1 = gene1.getSchedule().getClasses();
        List<String> classes2 = gene2.getSchedule().getClasses();

        for (int i = 0; i < gene1.getSlotBegins().size(); i++) {
            for (int j = 0; j < gene2.getSlotBegins().size(); j++) {
                if ((gene1.getSlotBegins().get(i) <= gene2.getSlotEnds().get(j) || gene2.getSlotBegins().get(j) <= gene1.getSlotEnds().get(i)) && Objects.equals(gene1.getWeekDays().get(i), gene2.getWeekDays().get(j))) {

                    if (classes1.stream().anyMatch(classes2::contains) || Objects.equals(gene1.getSchedule().getTeacherId(), gene2.getSchedule().getTeacherId()) || Objects.equals(gene1.getRoomId(), gene2.getRoomId())) {
                        int courseTime1 = gene1.getSlotEnds().get(i) - gene1.getSlotBegins().get(i);
                        int courseTime2 = gene2.getSlotEnds().get(j) - gene2.getSlotBegins().get(j);
                        if (courseTime1 <= courseTime2) {
                            gene1.getSlotBegins().set(i, 9);
                            gene1.getSlotEnds().set(i, 9 + courseTime1);
                        } else {
                            gene2.getSlotBegins().set(j, 9);
                            gene2.getSlotEnds().set(j, 9 + courseTime2);
                        }


                    }
                }
            }

        }

    }
    /**
     * 处理无法整除的剩余课时
     * （对应原始代码中 generateScheduleTimes 方法的后半部分）
     */
    private void handleRemainingSections(
            Schedule schedule,
            int consecutiveSections,
            List<Integer> weekDays,
            List<Integer> slotBegins,
            List<Integer> slotEnds,
            Random rand)
    {
        int totalSections = schedule.getWeekTimes();
        // 检查是否需要处理剩余课时
        if (totalSections % consecutiveSections == 0) return;

        // 处理不同连排节次的特殊逻辑
        if (consecutiveSections == 4) {
            handleFourSectionRemainder(schedule, weekDays, slotBegins, slotEnds, rand);
        } else if (consecutiveSections == 2) {
            handleTwoSectionRemainder(weekDays, slotBegins, slotEnds, rand);
        }
        // 其他连排节次不需要处理剩余课时
    }

    /**
     * 处理4连排的剩余课时（原逻辑）
     */
    private void handleFourSectionRemainder(
            Schedule schedule,
            List<Integer> weekDays,
            List<Integer> slotBegins,
            List<Integer> slotEnds,
            Random rand)
    {
        int remaining = schedule.getWeekTimes() % 4;
        int weekDay = rand.nextInt(5) + 1;
        int slotBegin = beginRandom(remaining);
        int slotEnd = slotBegin + remaining - 1;

        weekDays.add(weekDay);
        slotBegins.add(slotBegin);
        slotEnds.add(slotEnd);
    }

    /**
     * 处理2连排的剩余课时（原逻辑）
     */
    private void handleTwoSectionRemainder(
            List<Integer> weekDays,
            List<Integer> slotBegins,
            List<Integer> slotEnds,
            Random rand)
    {
        int weekDay = rand.nextInt(5) + 1;
        int slotBegin = beginRandom(3);
        int slotEnd = slotBegin + 2;

        int lastIndex = weekDays.size() - 1;
        weekDays.set(lastIndex, weekDay);
        slotBegins.set(lastIndex, slotBegin);
        slotEnds.set(lastIndex, slotEnd);
    }

    private Map<String, Course> createCourseMap(List<Course> courses) {
        return courses.stream().collect(Collectors.toMap(
                Course::getCourseId,
                Function.identity(),
                (existing, newValue) -> existing));
    }

}


