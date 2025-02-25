package top.zfmx.aipaike.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.entity.Schedule;

import java.util.*;

import static java.util.Arrays.stream;


/**
 * @author zfmx
 * @version 0.0.1
 **/
@Component
public class GeneticAlgorithmUtils {

    public static Individual run(List<Schedule> schedules, List<Classroom> classrooms ,Integer popSize,Double mutProb, Integer eliteCout, Integer maxlter, Double crossProb){
        Algorithm ga = new Algorithm(popSize, mutProb, eliteCout, maxlter, crossProb);

        Population population = ga.initPopulation(schedules,classrooms);
        ga.evolve(population, classrooms);
        return ga.getBestIndividual(population, classrooms);
    }


    @Data
    public static class Gene {

        private Schedule schedule;
        private List<Integer> weekDay;
        private List<Integer> slotBegin;
        private List<Integer> slotEnd;
        private String roomID;

        public Gene(Schedule schedule, List<Integer>  weekDay,
                    List<Integer> slotBegin, List<Integer> slotEnd){
            this.schedule = schedule;
            this.weekDay = weekDay;
            this.slotBegin = slotBegin;
            this.slotEnd = slotEnd;
        }
    }


        public record Individual(List<Gene> genes) {
    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    private static class Population {
        private List<Individual> individuals;
    }

    @Data
    @AllArgsConstructor
    private static class Algorithm{
        private final int popSize;//种群规模
        private final double mutProb;//变异几率
        private final int eliteCount;//精英个体数量
        private final int maxIter;//进化代数
        private final double crossProb;//交叉几率

//        /**
//         * 初始化种群
//         * @param schedules 排课任务
//         * @return 种群
//         */
//        private Population initPopulation(List<Schedule> schedules, List<Classroom> classrooms) {
//            Random rand = new Random();
//
//            List<Individual> individuals = new ArrayList<>();
//            for (int i = 0; i < popSize; i++) {
//                List<Gene> genes = new ArrayList<>();
//
//                for (Schedule schedule : schedules) {
//                    int weeklyOccurrences = schedule.getWeekTimes() / schedule.getConsecutiveSections(); // 上课次数
//                    List<Integer> weekDays = new ArrayList<>();
//                    List<Integer> slotBegins = new ArrayList<>();
//                    List<Integer> slotEnds = new ArrayList<>();
//                    if (schedule.getWeekTimes() % schedule.getConsecutiveSections() == 0) {
//
//                        // 生成每周上课的时间段
//                        for (int k = 0; k < weeklyOccurrences; k++) {
//                            // 生成随机星期几
//                            int weekDay = rand.nextInt(5) + 1;
//
//                            // 生成随机起始时间
//                            int slotBegin = begin_random(schedule.getConsecutiveSections());
//
//                            // 计算结束时间
//                            int slotEnd = slotBegin + schedule.getConsecutiveSections() - 1;
//
//                            // 存储到三个独立列表
//                            weekDays.add(weekDay);
//                            slotBegins.add(slotBegin);
//                            slotEnds.add(slotEnd);
//                        }
//                        Gene gene = new Gene(schedule, weekDays, slotBegins, slotEnds);
//                        gene.setRoomID(String.valueOf(new Random().nextInt(classrooms.size())));
//                        genes.add(gene);
//
//                    } else {
//                        // 创建三个独立列表
//                        if (schedule.getConsecutiveSections() == 2) {
//                            // 生成每周上课的时间段
//                            for (int k = 0; k < weeklyOccurrences - 1; k++) {
//                                // 生成随机星期几
//                                int weekDay = rand.nextInt(5) + 1;
//                                // 生成随机起始时间
//                                int slotBegin = begin_random(schedule.getConsecutiveSections());
//                                // 计算结束时间
//                                int slotEnd = slotBegin + schedule.getConsecutiveSections() - 1;
//                                // 存储到三个独立列表
//                                weekDays.add(weekDay);
//                                slotBegins.add(slotBegin);
//                                slotEnds.add(slotEnd);
//                            }
//                            int weekDay = rand.nextInt(5) + 1;
//                            // 生成随机起始时间
//                            int slotBegin = begin_random(3);
//                            // 计算结束时间
//                            int slotEnd = slotBegin + 2;
//                            // 存储到三个独立列表
//                            weekDays.add(weekDay);
//                            slotBegins.add(slotBegin);
//                            slotEnds.add(slotEnd);
//                            Gene gene = new Gene(schedule, weekDays, slotBegins, slotEnds);
//                            gene.setRoomID(String.valueOf(new Random().nextInt(classrooms.size())));
//                            genes.add(gene);
//                        } else if (schedule.getConsecutiveSections() == 4) {
//                            for (int k = 0; k < weeklyOccurrences; k++) {
//                                // 生成随机星期几
//                                int weekDay = rand.nextInt(5) + 1;
//                                // 生成随机起始时间
//                                int slotBegin = begin_random(schedule.getConsecutiveSections());
//                                // 计算结束时间
//                                int slotEnd = slotBegin + schedule.getConsecutiveSections() - 1;
//                                // 存储到三个独立列表
//                                weekDays.add(weekDay);
//                                slotBegins.add(slotBegin);
//                                slotEnds.add(slotEnd);
//                            }
//                            int weekDay = rand.nextInt(5) + 1;
//                            // 生成随机起始时间
//                            int slotBegin = begin_random(schedule.getWeekTimes() % schedule.getConsecutiveSections());
//                            // 计算结束时间
//                            int slotEnd = slotBegin + schedule.getWeekTimes() % schedule.getConsecutiveSections() - 1;
//                            // 存储到三个独立列表
//                            weekDays.add(weekDay);
//                            slotBegins.add(slotBegin);
//                            slotEnds.add(slotEnd);
//
//                            Gene gene = new Gene(schedule, weekDays, slotBegins, slotEnds);
//                            gene.setRoomID(String.valueOf(new Random().nextInt(classrooms.size())));
//                            genes.add(gene);
//                        }
//
//                    }
//                }
//
//                individuals.add(new Individual(genes));
//            }
//            return new Population(individuals);
//        }

        private Population initPopulation(List<Schedule> schedules, List<Classroom> classrooms) {
            Random rand = new Random();

            List<Individual> individuals = new ArrayList<>();
            for (int i = 0; i < popSize; i++) {
                List<Gene> genes = new ArrayList<>();

                for (Schedule schedule : schedules) {
                    int weeklyOccurrences = schedule.getWeekTimes() / schedule.getConsecutiveSections(); // 上课次数
                    List<Integer> weekDays = new ArrayList<>();
                    List<Integer> slotBegins = new ArrayList<>();
                    List<Integer> slotEnds = new ArrayList<>();

                    // 生成上课时间段的逻辑统一化
                    generateScheduleTimes(schedule, weeklyOccurrences, weekDays, slotBegins, slotEnds, rand);

                    Gene gene = new Gene(schedule, weekDays, slotBegins, slotEnds);
                    gene.setRoomID(String.valueOf(rand.nextInt(classrooms.size())));
                    genes.add(gene);
                }

                individuals.add(new Individual(genes));
            }

            return new Population(individuals);
        }

        /**
         * 生成排课的时间段
         * @param schedule 排课信息
         * @param weeklyOccurrences 每周上课次数
         * @param weekDays 存储星期几
         * @param slotBegins 存储起始时间
         * @param slotEnds 存储结束时间
         * @param rand 随机数生成器
         */
        private void generateScheduleTimes(Schedule schedule, int weeklyOccurrences,
                                           List<Integer> weekDays, List<Integer> slotBegins,
                                           List<Integer> slotEnds, Random rand) {
            int consecutiveSections = schedule.getConsecutiveSections();

            for (int k = 0; k < weeklyOccurrences; k++) {
                int weekDay = rand.nextInt(5) + 1; // 生成随机星期几
                int slotBegin = begin_random(consecutiveSections); // 生成随机起始时间
                int slotEnd = slotBegin + consecutiveSections - 1; // 计算结束时间

                // 存储到三个独立列表
                weekDays.add(weekDay);
                slotBegins.add(slotBegin);
                slotEnds.add(slotEnd);
            }

            // 处理剩余的部分，如果上课时间不是整除consecutiveSections
            if (schedule.getWeekTimes() % consecutiveSections != 0 && consecutiveSections == 4) {
                int remainingOccurrences = schedule.getWeekTimes() % consecutiveSections;
                int weekDay = rand.nextInt(5) + 1;
                int slotBegin = begin_random(remainingOccurrences);
                int slotEnd = slotBegin + remainingOccurrences - 1;
                weekDays.add(weekDay);
                slotBegins.add(slotBegin);
                slotEnds.add(slotEnd);
            } else if (schedule.getWeekTimes() % consecutiveSections != 0 && consecutiveSections == 2) {
                int weekDay = rand.nextInt(5) + 1;
                int slotBegin = begin_random(3);
                int slotEnd = slotBegin + 2;
                weekDays.set(weekDays.size() - 1, weekDay);      // 替换最后一个位置的值
                slotBegins.set(slotBegins.size() - 1, slotBegin);
                slotEnds.set(slotEnds.size() - 1, slotEnd);
            }
        }


        /**
         * 开课时间
         * @param weeklyScheduleCourseTimeslot 连拍节次
         * @return 随机数
         */
        private static int begin_random(int weeklyScheduleCourseTimeslot) {
            Random random = new Random();
            // 处理输入不在 1 - 4 范围内的情况
            return switch (weeklyScheduleCourseTimeslot) {
                case 1 ->
                        random.nextInt(8) + 1;   // 生成 1 到 7 之间的随机整数
                case 2 -> {
                    int[] numbers2 = {1, 3, 5, 7};
                    yield numbers2[random.nextInt(numbers2.length)];  // 随机选择数组中的一个元素
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
            List<Individual> individuals = population.individuals;
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

        /**
         * 进化
         * @param population 种群
         */
        private void evolve(Population population, List<Classroom> classrooms) {
            for (int generation = 0; generation < maxIter; generation++) {
                // 计算适应度并存储
                List<Double> fitnessValues = new ArrayList<>(popSize);
                for (Individual individual : population.getIndividuals()) {
                    fitnessValues.add(calculateFitness(individual,classrooms));
                }

                // 创建新一代种群
                Population newPopulation = new Population();
                List<Individual> individuals = new ArrayList<>();

                // 1. 保留精英个体（按适应度升序排序）
                List<Individual> sortedPopulation = sortByFitness(population, fitnessValues);
                for (int i = 0; i < eliteCount; i++) {
                    individuals.add(sortedPopulation.get(i));
                }

                newPopulation.setIndividuals(individuals);

                // 2. 生成新个体填充剩余位置
                List<Individual> list = new ArrayList<>();
                for (int i = eliteCount; i < popSize; i++) {
                    // 轮盘赌选择父代
                    Individual parent1 = rouletteWheelSelection(population, fitnessValues);
                    Individual parent2 = rouletteWheelSelection(population, fitnessValues);

                    Individual child;
                    // 按交叉概率进行交叉
                    if (Math.random() < crossProb) {
                        child = crossover(parent1, parent2);
                    } else {
                        child = new Random().nextBoolean() ? parent1 : parent2;
                    }

                    // 变异操作
                    mutate(child);
                    list.add(child);
                }

                population.setIndividuals(list);
            }
        }

        // 按适应度排序种群（升序）
        private List<Individual> sortByFitness(Population population, List<Double> fitnessValues) {
            // 创建索引列表
            List<Integer> indices = new ArrayList<>(popSize);
            for (int i = 0; i < popSize; i++) indices.add(i);

            // 按适应度值升序排序索引
            indices.sort(Comparator.comparingDouble(fitnessValues::get));

            // 构建排序后的个体列表
            List<Individual> sorted = new ArrayList<>(popSize);
            for (int index : indices) {
                sorted.add(population.individuals.get(index));
            }
            return sorted;
        }

        private static boolean hasConflict(Gene gene1, Gene gene2) {
            // 检查周次是否重叠
            List<String> classes1 = gene1.getSchedule().getClasses();
            List<String> classes2 = gene2.getSchedule().getClasses();
            boolean result = false;
            for (int i = 0;i<gene1.getSlotBegin().size();i++ ){
                if((gene1.getSlotBegin().get(i) <= gene2.getSlotEnd().get(i) || gene2.getSlotBegin().get(i) <= gene1.getSlotEnd().get(i)) && Objects.equals(gene1.getWeekDay().get(i), gene2.getWeekDay().get(i))){
                    if (classes1.stream().anyMatch(classes2::contains) || Objects.equals(gene1.getSchedule().getTeacher(), gene2.getSchedule().getTeacher()) || Objects.equals(gene1.getRoomID(), gene2.getRoomID())){
                        result = true;
                        break;
                    }
                }
            }
            return result;

        }



        private double calculateFitness(Individual individual, List<Classroom> classrooms) {
            int fitness = 0;
            List<Gene> genes = individual.genes();
            for (int i = 0; i < genes.size(); i++) {
                int requiredCapacity = genes.get(i).getSchedule().getStudent_count();

                String roomID = genes.get(i).getRoomID();
                String campus = "0";
                for (Classroom classroom : classrooms) {
                    if (roomID.equals(classroom.getRoomId())){
                        campus = classroom.getCampus();
                    }
                }

                if ( Integer.getInteger(campus) < requiredCapacity) {
                    fitness += 5; // 超出容量就增加
                }
                for(int k = 0;k < genes.get(i).getSlotBegin().size();k++){
                    if (genes.get(i).getSlotBegin().get(k) == 1){
                        fitness += 1;
                    }
                }
                for (int j = i + 1; j < genes.size(); j++) {
                    Gene gene1 = genes.get(i);
                    Gene gene2 = genes.get(j);
                    if ((gene1.getSchedule().getWeekBegin() <= gene2.getSchedule().getWeekEnd()) ||
                            (gene1.getSchedule().getWeekEnd() >= gene2.getSchedule().getWeekBegin())){
                        if (hasConflict(gene1,gene2)){
                            fitness += 5; // 超出容量就增加
                        }

                    }
                }
            }

            return fitness;
        }

        // 交叉操作
        private Individual crossover(Individual parent1, Individual parent2) {
            List<Gene> childGenes = new ArrayList<>();
            List<Gene> parent1Genes = parent1.genes();
            List<Gene> parent2Genes = parent2.genes();

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
            List<Gene> genes = individual.genes();
            if (genes.isEmpty()) return;

            // 随机选择一个基因进行变异
            Random rand = new Random();
            int mutationPoint = rand.nextInt(genes.size());
            Gene geneToMutate = genes.get(mutationPoint);

            // 根据变异概率决定是否执行变异
            if (rand.nextDouble() < mutProb) {
                // 生成新的星期列表
                List<Integer> newWeekDays = new ArrayList<>();

                // 遍历原周数长度
                for (int i = 0; i < geneToMutate.getWeekDay().size(); i++) {
                    // 随机生成新星期 (1-5)
                    int newWeekDay = rand.nextInt(5) + 1;
                    newWeekDays.add(newWeekDay);
                }

                // 生成新的时间段列表
                List<Integer> newSlotBegins = new ArrayList<>();
                List<Integer> newSlotEnds = new ArrayList<>();

                // 遍历原时间段长度
                for (int i = 0; i < geneToMutate.getSlotBegin().size(); i++) {
                    // 生成新起始时间
                    int newSlotBegin = begin_random(geneToMutate.getSchedule().getConsecutiveSections());

                    // 计算新结束时间
                    int newSlotEnd = newSlotBegin + geneToMutate.getSchedule().getConsecutiveSections() - 1;

                    newSlotBegins.add(newSlotBegin);
                    newSlotEnds.add(newSlotEnd);
                }

                // 创建新基因并替换原基因
                Gene mutatedGene = new Gene(
                        geneToMutate.getSchedule(),
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
            for (int i = 0; i < popSize; i++) {
                Individual current = population.individuals.get(i);
                double currentFitness = calculateFitness(current, classrooms);

                if (currentFitness < minFitness) {
                    minFitness = currentFitness;
                    bestIndividual = current;
                }
            }

            return bestIndividual;
        }

    }

}
