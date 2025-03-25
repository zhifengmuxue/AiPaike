package top.zfmx.aipaike.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import top.zfmx.aipaike.entity.*;

import java.sql.*;
import java.util.*;
import java.util.stream.Collectors;



@Component
public class AdjustScheduleUtils {
    public static List<ScheduleResult> run(
            List<ScheduleResult> adjustCourses,
            AdjustmentRequest requests,
            int popSize, double mutProb, int eliteCount, int maxIter, double crossProb) {

        Algorithm ga = new Algorithm(popSize, mutProb, eliteCount, maxIter, crossProb);

        // 按requests顺序处理每个调整需求
        Population population = null;
        population = ga.initPopulation(adjustCourses, requests);
        ga.evolve(population,requests);
        Individual bestIndividual = ga.getBestIndividual(population);

        Algorithm.adjustConflicts(bestIndividual);

        return convertIndividualToScheduleList(bestIndividual);
    }
    public static List<ScheduleResult> convertIndividualToScheduleList(Individual bestIndividual) {
        if (bestIndividual == null || bestIndividual.getGenes() == null) {
            return Collections.emptyList();
        }

        return bestIndividual.getGenes().stream()
                .map(Gene::getScheduleResult)
                .filter(Objects::nonNull)  // 过滤空值
                .collect(Collectors.toList());
    }
    @Getter
    @Data
    public static class Gene {
        private ScheduleResult ScheduleResult;
        public Gene(ScheduleResult ScheduleResult) {
            this.ScheduleResult = ScheduleResult;
        }


    }
    @Data
    public static class Individual {
        private final List<Gene> genes;

    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    private static class Population {
        private List<Individual> individuals;
    }
    @Data
    private static class Algorithm {
        private final int popSize;
        private final double mutProb;
        private final int eliteCount;
        private final int maxIter;
        private final double crossProb;

        public Algorithm(int popSize, double mutProb, int eliteCount, int maxIter, double crossProb) {
            this.popSize = popSize;
            this.mutProb = mutProb;
            this.eliteCount = eliteCount;
            this.maxIter = maxIter;
            this.crossProb = crossProb;
        }

        // 初始化种群：修改需要调整的课程
        private Population initPopulation(List<ScheduleResult> adjustCourses, AdjustmentRequest requests) {
            List<Individual> individuals = new ArrayList<>();
            Random rand = new Random();

            for (int i = 0; i < popSize; i++) { // 循环popSize次
                List<Gene> adjustedCourses = new ArrayList<>(); // 每次循环新建基因列表

                for (ScheduleResult course : adjustCourses) {
                    if (isCourseAdjustable(course, requests)) {
                        // 创建课程副本避免修改原始数据
                        ScheduleResult adjustedCourse = copyScheduleResult(course);

                        int consecutiveSections = adjustedCourse.getSlotEnd() - adjustedCourse.getSlotStart() + 1;
                        // 调整星期
                        int newWeekDay;
                        do {
                            newWeekDay = rand.nextInt(5) + 1;
                        } while (newWeekDay == requests.getWeekDay());
                        adjustedCourse.setWeekDay(newWeekDay);

                        // 调整节次
                        int newSlotStart = begin_random(consecutiveSections);
                        adjustedCourse.setSlotStart(newSlotStart);
                        adjustedCourse.setSlotEnd(newSlotStart + consecutiveSections - 1);

                        adjustedCourses.add(new Gene(adjustedCourse));
                    }
                }

                // 创建个体并添加到种群
                individuals.add(new Individual(adjustedCourses));
            }

            return new Population(individuals);
        }

        // 辅助方法：深拷贝课程对象
        private ScheduleResult copyScheduleResult(ScheduleResult original) {
            return new ScheduleResult(
                    original.getWeekDay(),
                    original.getSlotStart(),
                    original.getSlotEnd(),
                    original.getWeekBegin(),
                    original.getWeekEnd(),
                    original.getCourseName(),
                    original.getTeacherName(),
                    original.getClassroomName(),
                    original.getRoomBuilding(),
                    original.getRoomFloor(),
                    original.getClassName()
            );
        }

        // 课程条件校验方法,
        private boolean isCourseAdjustable(ScheduleResult course, AdjustmentRequest requests) {
            return course.getWeekBegin() <= requests.getWeek()
                    && course.getWeekEnd() >= requests.getWeek()
                    && course.getWeekDay() == requests.getWeekDay();
        }


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
        private void evolve(Population population,AdjustmentRequest requests) {
            for (int generation = 0; generation < maxIter; generation++) {
                // 计算适应度并存储
                List<Double> fitnessValues = new ArrayList<>(popSize);
                for (Individual individual : population.getIndividuals()) {
                    fitnessValues.add(calculateFitness(individual));
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
                while (newPopulation.individuals.size() < popSize) {
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
                    mutate(child,requests);
                    newPopulation.individuals.add(child);
                }
                population = newPopulation;
            }
        }

        // 按适应度排序种群（升序）
        private List<Individual> sortByFitness(Population population, List<Double> fitnessValues) {
            // 获取种群大小，并验证数据一致性
            int popSize = fitnessValues.size();

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
                sorted.add(population.individuals.get(index));
            }

            return sorted;
        }
        /**
         * 判断两基因是否有时间是的冲突
         *
         */
        private static boolean hasConflict(Gene gene1, Gene gene2) {

            boolean result = false;
            if((gene1.getScheduleResult().getSlotStart() <= gene2.getScheduleResult().getSlotEnd() || gene2.getScheduleResult().getSlotStart() <= gene1.getScheduleResult().getSlotEnd())
                    && Objects.equals(gene1.getScheduleResult().getWeekDay(), gene2.getScheduleResult().getWeekDay())){

                if (Objects.equals(gene1.getScheduleResult().getTeacherName(), gene2.getScheduleResult().getTeacherName())
                        || (Objects.equals(gene1.getScheduleResult().getRoomBuilding(), gene2.getScheduleResult().getRoomBuilding()) &&
                        Objects.equals(gene1.getScheduleResult().getRoomFloor(), gene2.getScheduleResult().getRoomFloor()) &&
                        Objects.equals(gene1.getScheduleResult().getClassroomName(), gene2.getScheduleResult().getClassroomName())
                )){
                    result = true;
                }
            }
            return result;

        }



        private double calculateFitness(Individual individual) {
            int fitness = 0;
            List<Gene> genes = individual.genes;
            for (int i = 0; i < genes.size(); i++) {
                for (int j = i + 1; j < genes.size(); j++) {
                    Gene gene1 = genes.get(i);
                    Gene gene2 = genes.get(j);
                    if ((gene1.getScheduleResult().getWeekBegin() <= gene2.getScheduleResult().getWeekEnd()) ||
                            (gene1.getScheduleResult().getWeekEnd() >= gene2.getScheduleResult().getWeekBegin())){
                        if (hasConflict(gene1,gene2)){
                            fitness += 5; // 存在冲突就增加
                        }

                    }
                }
            }
            return fitness;
        }

        // 交叉操作
        private Individual crossover(Individual parent1, Individual parent2) {
            List<Gene> childGenes = new ArrayList<>();
            List<Gene> parent1Genes = parent1.genes;
            List<Gene> parent2Genes = parent2.genes;

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
        private void mutate(Individual individual,AdjustmentRequest requests) {
            // 获取个体的所有基因
            List<Gene> genes = individual.genes;
            if (genes.isEmpty()) return;

            // 随机选择一个基因进行变异
            Random rand = new Random();
            int mutationPoint = rand.nextInt(genes.size());
            Gene geneToMutate = genes.get(mutationPoint);

            // 根据变异概率决定是否执行变异
            if (rand.nextDouble() < mutProb) {
                ScheduleResult original = geneToMutate.getScheduleResult();
                int randomNumber;
                do {
                    randomNumber = rand.nextInt(5) + 1; // 生成
                } while (randomNumber == requests.getWeekDay()); // 直到不等于weekDay
                int consecutiveSections = geneToMutate.getScheduleResult().getSlotEnd() - geneToMutate.getScheduleResult().getSlotStart();

                int newSlotStart = begin_random(consecutiveSections + 1);
                int newSlotEnd = newSlotStart + consecutiveSections;

                // 创建新的完整课程安排结果（保留原课程信息）
                ScheduleResult newResult = new ScheduleResult(
                        randomNumber,        // 新的星期
                        newSlotStart,        // 新的开始节次
                        newSlotEnd,           // 新的结束节次
                        original.getWeekBegin(),  // 保留原开始周
                        original.getWeekEnd(),    // 保留原结束周
                        original.getCourseName(), // 保留原课程名
                        original.getTeacherName(),// 保留原教师
                        original.getClassroomName(),// 保留原教室
                        original.getRoomBuilding(), // 保留原教学楼
                        original.getRoomFloor(),  // 保留原楼层
                        original.getClassName()
                );

                // 创建变异后的基因并替换原基因
                Gene mutatedGene = new Gene(newResult);
                genes.set(mutationPoint, mutatedGene);

            }
        }

        public Individual getBestIndividual(Population population) {
            Individual bestIndividual = population.individuals.getFirst();
            double minFitness = calculateFitness(population.individuals.getFirst());

            // 遍历所有个体寻找最优解
            for (int i = 1; i < population.individuals.size(); i++) {
                Individual current = population.individuals.get(i);
                double currentFitness = calculateFitness(current);

                if (currentFitness < minFitness) {
                    minFitness = currentFitness;
                    bestIndividual = current;
                }
            }

            return bestIndividual;
        }
        // 新增方法：检测并调整冲突到晚上，将最优解输入，遍历其代码看他是否存在冲突，有冲突就调到当天晚上
        private static void adjustConflicts(Individual bestIndividual) {
            List<Gene> genes = bestIndividual.getGenes();
            for (int i = 0; i < genes.size(); i++) {
                for (int j = i + 1; j < genes.size(); j++) {
                    Gene gene1 = genes.get(i);
                    Gene gene2 = genes.get(j);
                    if ((gene1.getScheduleResult().getWeekBegin() <= gene2.getScheduleResult().getWeekEnd()) ||
                            (gene1.getScheduleResult().getWeekEnd() >= gene2.getScheduleResult().getWeekBegin())){
                        if (hasConflict(gene1,gene2)){
                            adjustGeneToEvening(gene1,gene2);
                        }
                    }
                }
            }
        }

        // 新增方法：调整单个Gene到晚上
        private static void adjustGeneToEvening(Gene gene1, Gene gene2) {
            ScheduleResult sr1 = gene1.getScheduleResult();
            ScheduleResult sr2 = gene2.getScheduleResult();
            int courseTime1 = gene1.getScheduleResult().getSlotEnd() - gene1.getScheduleResult().getSlotStart();
            int courseTime2 = gene2.getScheduleResult().getSlotEnd() - gene2.getScheduleResult().getSlotStart();
            final int EVENING_START = 9;

            // 创建新的调度结果（保留其他字段）
            if (courseTime1 <= courseTime2) {
                ScheduleResult newSr1 = new ScheduleResult(
                        sr1.getWeekDay(),      // 保留原星期
                        EVENING_START,         // 新开始节次
                        EVENING_START + courseTime1, // 新结束节次
                        sr1.getWeekBegin(),     // 保留原开始周
                        sr1.getWeekEnd(),      // 保留原结束周
                        sr1.getCourseName(),    // 保留课程名
                        sr1.getTeacherName(),   // 保留教师
                        sr1.getClassroomName(), // 保留教室
                        sr1.getRoomBuilding(),  // 保留教学楼
                        sr1.getRoomFloor()  ,    // 保留楼层
                        sr1.getClassName()
                );
                gene1.setScheduleResult(newSr1);
            } else {
                ScheduleResult newSr2 = new ScheduleResult(
                        sr2.getWeekDay(),
                        EVENING_START,
                        EVENING_START + courseTime2,
                        sr2.getWeekBegin(),
                        sr2.getWeekEnd(),
                        sr2.getCourseName(),
                        sr2.getTeacherName(),
                        sr2.getClassroomName(),
                        sr2.getRoomBuilding(),
                        sr2.getRoomFloor(),
                        sr2.getClassName()
                );
                gene2.setScheduleResult(newSr2);
            }
        }

    }
}