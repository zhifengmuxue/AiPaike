package top.zfmx.aipaike.algorithm;
import java.util.*;

import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.entity.Database;
import top.zfmx.aipaike.entity.Schedules;

import java.sql.SQLException;
import java.util.Random;

public class GeneticAlgorithm {

    private final int popSize;//种群规模
    private final double mutProb;//变异几率
    private final int eliteCount;//精英个体数量
    private final int maxIter;//进化代数
    private final double crossProb;//交叉几率

    public GeneticAlgorithm(int popSize, double mutProb, int eliteCount, int maxIter, double crossProb) {
        this.popSize = popSize;
        this.mutProb = mutProb;
        this.eliteCount = eliteCount;
        this.maxIter = maxIter;
        this.crossProb = crossProb;
    }
    // 初始化种群
    public Population initPopulation(List<Schedules> schedules) {

        Population population = new Population(popSize);

        Random rand = new Random();
        for (int i = 0; i < popSize; i++) {
            List<Gene> genes = new ArrayList<>();
            for (int j = 0; j < schedules.size(); j++) {

                int weeklyOccurrences = schedules.get(j).getWeekTimes() / schedules.get(j).getConsecutiveSections();
                if (schedules.get(j).getWeekTimes() % schedules.get(j).getConsecutiveSections() == 0) {
                    List<Integer> weekDays = new ArrayList<>();
                    List<Integer> slotBegins = new ArrayList<>();
                    List<Integer> slotEnds = new ArrayList<>();

                    // 生成每周上课的时间段
                    for (int k = 0; k < weeklyOccurrences; k++) {
                        // 生成随机星期几
                        int weekDay = rand.nextInt(5) + 1;

                        // 生成随机起始时间
                        int slotBegin = begin_random(schedules.get(j).getConsecutiveSections());

                        // 计算结束时间
                        int slotEnd = slotBegin + schedules.get(j).getConsecutiveSections() - 1;

                        // 存储到三个独立列表
                        weekDays.add(weekDay);
                        slotBegins.add(slotBegin);
                        slotEnds.add(slotEnd);
                    }
                    try {
                        genes.add(new Gene(schedules.get(j), weekDays,slotBegins, slotEnds));
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }

                }else{
                    // 创建三个独立列表
                    List<Integer> weekDays = new ArrayList<>();
                    List<Integer> slotBegins = new ArrayList<>();
                    List<Integer> slotEnds = new ArrayList<>();
                    if(schedules.get(j).getConsecutiveSections() == 2) {
                        // 生成每周上课的时间段
                        for (int k = 0; k < weeklyOccurrences - 1; k++) {
                            // 生成随机星期几
                            int weekDay = rand.nextInt(5) + 1;
                            // 生成随机起始时间
                            int slotBegin = begin_random(schedules.get(j).getConsecutiveSections());
                            // 计算结束时间
                            int slotEnd = slotBegin + schedules.get(j).getConsecutiveSections() - 1;
                            // 存储到三个独立列表
                            weekDays.add(weekDay);
                            slotBegins.add(slotBegin);
                            slotEnds.add(slotEnd);
                        }
                        int weekDay = rand.nextInt(5) + 1;
                        // 生成随机起始时间
                        int slotBegin = begin_random(3);
                        // 计算结束时间
                        int slotEnd = slotBegin + 2;
                        // 存储到三个独立列表
                        weekDays.add(weekDay);
                        slotBegins.add(slotBegin);
                        slotEnds.add(slotEnd);
                        try {
                            genes.add(new Gene(schedules.get(j), weekDays,slotBegins, slotEnds));
                        } catch (SQLException e) {
                            throw new RuntimeException(e);
                        }
                    } else if (schedules.get(j).getConsecutiveSections() == 4) {
                        for (int k = 0; k < weeklyOccurrences; k++) {
                            // 生成随机星期几
                            int weekDay = rand.nextInt(5) + 1;
                            // 生成随机起始时间
                            int slotBegin = begin_random(schedules.get(j).getConsecutiveSections());
                            // 计算结束时间
                            int slotEnd = slotBegin + schedules.get(j).getConsecutiveSections() - 1;
                            // 存储到三个独立列表
                            weekDays.add(weekDay);
                            slotBegins.add(slotBegin);
                            slotEnds.add(slotEnd);
                        }
                        int weekDay = rand.nextInt(5) + 1;
                        // 生成随机起始时间
                        int slotBegin = begin_random(schedules.get(j).getWeekTimes() % schedules.get(j).getConsecutiveSections());
                        // 计算结束时间
                        int slotEnd = slotBegin + schedules.get(j).getWeekTimes() % schedules.get(j).getConsecutiveSections() - 1;
                        // 存储到三个独立列表
                        weekDays.add(weekDay);
                        slotBegins.add(slotBegin);
                        slotEnds.add(slotEnd);
                        try {
                            genes.add(new Gene(schedules.get(j), weekDays,slotBegins, slotEnds));
                        } catch (SQLException e) {
                            throw new RuntimeException(e);
                        }
                    }

                }
            }

            population.setIndividual(i, new Individual(genes));
        }
        return population;
    }
    public static int begin_random(int weekly_schedule_course_timeslot) {
        Random random = new Random();
        switch (weekly_schedule_course_timeslot) {
            case 1:
                // 生成 1 到 7 之间的随机整数
                return random.nextInt(8) + 1;
            case 2:
                int[] numbers2 = {1, 3, 5, 7};
                // 随机选择数组中的一个元素
                return numbers2[random.nextInt(numbers2.length)];
            case 3:
                int[] numbers3 = {1, 2, 5, 6};
                return numbers3[random.nextInt(numbers3.length)];
            case 4:
                int[] numbers4 = {1, 5};
                return numbers4[random.nextInt(numbers4.length)];
            default:
                // 处理输入不在 1 - 4 范围内的情况
                throw new IllegalArgumentException("连排节次必须在 1 到 4 之间。");
        }
    }

    private Individual rouletteWheelSelection(Population population, List<Double> fitnessValues) {
        double totalWeight = 0.0;
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
                return population.getIndividual(i);
            }
        }

        // 兜底返回最后一个个体
        return population.getIndividual(popSize - 1);
    }

    // 进化函数
    public Population evolve(Population population) throws SQLException {
        for (int generation = 0; generation < maxIter; generation++) {
            // 计算适应度并存储
            List<Double> fitnessValues = new ArrayList<>(popSize);
            for (Individual individual : population.getIndividuals()) {
                fitnessValues.add(calculateFitness(individual));
            }

            // 创建新一代种群
            Population newPopulation = new Population(popSize);

            // 1. 保留精英个体（按适应度升序排序）
            List<Individual> sortedPopulation = sortByFitness(population, fitnessValues);
            for (int i = 0; i < eliteCount; i++) {
                newPopulation.setIndividual(i, sortedPopulation.get(i));
            }

            // 2. 生成新个体填充剩余位置
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

                newPopulation.setIndividual(i, child);
            }

            population = newPopulation;
        }

        return population;
    }

    // 辅助方法：按适应度排序种群（升序）
    private List<Individual> sortByFitness(Population population, List<Double> fitnessValues) {
        // 创建索引列表
        List<Integer> indices = new ArrayList<>(popSize);
        for (int i = 0; i < popSize; i++) indices.add(i);

        // 按适应度值升序排序索引
        indices.sort(Comparator.comparingDouble(fitnessValues::get));

        // 构建排序后的个体列表
        List<Individual> sorted = new ArrayList<>(popSize);
        for (int index : indices) {
            sorted.add(population.getIndividual(index));
        }
        return sorted;
    }

    public static boolean hasConflict(Schedules schedule1, Schedules schedule2) {
        // 检查周次是否重叠
        boolean weekConflict = (schedule1.getWeekBegin() <= schedule2.getWeekEnd()) &&
                (schedule1.getWeekEnd() >= schedule2.getWeekBegin());

        if (!weekConflict) return false; // 周次不冲突则无需进一步检查

        List<String> classes1 = schedule1.getClasses();
        List<String> classes2 = schedule2.getClasses();

        // 检查是否存在相同班级
        boolean hasCommonClass = classes1.stream().anyMatch(classes2::contains);
        if (!hasCommonClass) return false; // 班级不同则无需检查时间段

        // 检查时间段是否冲突
        return hasTimeConflict(schedule1.getWeekTimes(), schedule1.getConsecutiveSections(),
                schedule2.getWeekTimes(), schedule2.getConsecutiveSections());
    }

    // 检查时间段是否冲突
    private static boolean hasTimeConflict(int weekTimes1, int consecutiveSections1,
                                           int weekTimes2, int consecutiveSections2) {
        // 这里假设时间段已正确生成，实际应根据具体时间逻辑判断
        return (weekTimes1 == weekTimes2) && (consecutiveSections1 == consecutiveSections2);
    }

    // 检查两个时间段是否重叠
    private static boolean isTimeOverlap(int start1, int end1, int start2, int end2) {
        return (start1 <= end2) && (end1 >= start2);
    }

    private double calculateFitness(Individual individual) throws SQLException {
        int fitness = 0;
        List<Gene> genes = individual.getGenes();

        for (int i = 0; i < genes.size(); i++) {
            int requiredCapacity = genes.get(i).getSchedule().getStudent_count();
            Database db = new Database("jdbc:mysql://localhost:3306/aipaike", "root", "123456");
            int  Capacity = db.getCapacityByID(genes.get(i).getRoomID());
            db.close();
            if ( Capacity < requiredCapacity) {
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
                    if (Objects.equals(gene1.getRoomID(), gene2.getRoomID())) {
                        if (Objects.equals(gene1.getSchedule().getTeacher(),gene2.getSchedule().getTeacher() )) {
                            if (hasConflict(gene1.getSchedule(),gene2.getSchedule())){
                                fitness += 5; // 超出容量就增加
                            }
                        }
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
    private void mutate(Individual individual) throws SQLException {
        // 获取个体的所有基因
        List<Gene> genes = individual.getGenes();
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

    public Individual getBestIndividual(Population population) throws SQLException {
        Individual bestIndividual = null;
        double minFitness = Double.MAX_VALUE;

        // 遍历所有个体寻找最优解
        for (int i = 0; i < popSize; i++) {
            Individual current = population.getIndividual(i);
            double currentFitness = calculateFitness(current);

            if (currentFitness < minFitness) {
                minFitness = currentFitness;
                bestIndividual = current;
            }
        }

        return bestIndividual;
    }

    public static void main(String[] args) {
        Database db = null;
        try {
            // 1. 建立数据库连接
            db = new Database("jdbc:mysql://localhost:3306/aipaike", "root", "123456");

            // 2. 获取所有课程时间安排数据
            List<Schedules> schedules = db.getSchedules();
            System.out.println("成功获取到 " + schedules.size() + " 条课程时间安排数据");

            // 3. 初始化遗传算法参数
            GeneticAlgorithm ga = new GeneticAlgorithm(
                    2,    // 种群规模
                    0.1,    // 变异几率
                    1,      // 精英个体数量
                    2,   // 进化代数
                    0.7     // 交叉几率
            );

            // 4. 初始化种群
            Population population = ga.initPopulation(schedules);
            System.out.println("\n成功初始化种群，包含 " + population.getIndividuals().length + " 个种群");
            Population evolved = ga.evolve(population);
            Individual best = ga.getBestIndividual(evolved);
//            ga.printBestSolution(best);

//            // 5. 打印种群前5个个体信息
//            System.out.println("\n种群前5个个体:");
//            for (int i = 0; i < 5 && i < population.getIndividuals().length; i++) {
//                Individual individual = population.getIndividuals()[i];
//                System.out.println("个体 " + (i+1) + " 包含 " + individual.getGenes().size() + " 个基因");
//                for (Gene gene : individual.getGenes()) {
//                    System.out.printf(" - 课程 %s 星期 %d 时间 %d-%d 教室 %s%n",
//                            gene.getSchedule().getCourseId(),
//                            gene.getWeekDay(),
//                            gene.getSlotBegin(),
//                            gene.getSlotEnd(),
//                            gene.getRoomID());
//                }
//            }

        } catch (SQLException e) {
            // 处理数据库相关异常
            System.err.println("数据库操作失败: " + e.getMessage());
            e.printStackTrace();
        } finally {
            // 6. 确保关闭数据库连接
            if (db != null) {
                try {
                    db.close();
                    System.out.println("\n数据库连接已关闭");
                } catch (SQLException e) {
                    System.err.println("关闭数据库连接失败: " + e.getMessage());
                }
            }
        }
    }
}





