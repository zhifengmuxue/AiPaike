package top.zfmx.aipaike.util;

import jakarta.annotation.Resource;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.entity.Schedule;
import top.zfmx.aipaike.entity.ScheduleResult;
import top.zfmx.aipaike.service.ClassroomService;
import top.zfmx.aipaike.service.CourseService;
import top.zfmx.aipaike.service.ScheduleResultService;
import top.zfmx.aipaike.service.SchedulesService;

import java.sql.*;
import java.util.*;

import static java.util.Arrays.stream;
import static top.zfmx.aipaike.util.GeneticAlgorithmUtils.Algorithm.adjustConflictsToEvening;


/**
 * @author zfmx
 * @version 0.0.1
 **/
@Component
public class GeneticAlgorithmUtils {

    public static List<ScheduleResult>  run(List<Schedule> schedules, List<Classroom> classrooms ,List<Course> courses,Integer popSize,Double mutProb, Integer eliteCout, Integer maxlter, Double crossProb){
        Algorithm ga = new Algorithm(popSize, mutProb, eliteCout, maxlter, crossProb);

        Population population = ga.initPopulation(schedules,classrooms,courses);

        ga.evolve(population, classrooms);

        Individual bestIndividual = ga.getBestIndividual(population,classrooms);
        adjustConflictsToEvening(bestIndividual);

        return convertToClassTimetable(bestIndividual,classrooms);
    }

    public static List<ScheduleResult> convertToClassTimetable(Individual bestIndividual, List<Classroom> classrooms) {
        List<ScheduleResult> scheduleResults = new ArrayList<>();
        for (Gene gene : bestIndividual.genes()) {
            Schedule schedule = gene.getSchedule();
            List<String> classes = schedule.getClasses();
            String courseName = gene.getCourse().getCourseName();
            String teacher = schedule.getTeacherName();
            String roomId = gene.getRoomID();

            // 获取教室信息
            Classroom classroom = classrooms.stream()
                    .filter(c -> c.getRoomId().equals(roomId))
                    .findFirst()
                    .orElse(null);

            String classroomName = classroom != null ? classroom.getRoomName() : "未知教室";
            String roomBuilding = classroom != null ? classroom.getBuilding() : "未知教学楼";
            int roomFloor = classroom != null ? classroom.getFloor() : -1;

            int weekBegin = schedule.getWeekBegin();
            int weekEnd = schedule.getWeekEnd();

            // 遍历时间段
            for (int i = 0; i < gene.getWeekDay().size(); i++) {
                int weekDay = gene.getWeekDay().get(i);
                int slotStart = gene.getSlotBegin().get(i);
                int slotEnd = gene.getSlotEnd().get(i);

                // 为每个班级生成课表条目
                for (String className : classes) {
                    ScheduleResult result = new ScheduleResult(
                            weekDay,
                            slotStart,
                            slotEnd,
                            weekBegin,
                            weekEnd,
                            courseName,
                            teacher,
                            classroomName,
                            roomBuilding,
                            roomFloor,
                            className  // 新增的班级名称字段
                    );

                    scheduleResults.add(result);
                }
            }
        }

        return scheduleResults;
    }

    @Data
    public static class Gene {

        private Schedule schedule;
        private Course course;
        private List<Integer> weekDay;
        private List<Integer> slotBegin;
        private List<Integer> slotEnd;
        private String roomID;

        public Gene(Schedule schedule,Course course, List<Integer>  weekDay,
                    List<Integer> slotBegin, List<Integer> slotEnd){
            this.course = course;
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
    static class Algorithm{
        private final int popSize;//种群规模
        private final double mutProb;//变异几率
        private final int eliteCount;//精英个体数量
        private final int maxIter;//进化代数
        private final double crossProb;//交叉几率


        private Population initPopulation(List<Schedule> schedules, List<Classroom> classrooms,List<Course> courses) {
            Random rand = new Random();

            List<Individual> individuals = new ArrayList<>();
            for (int i = 0; i < popSize; i++) {
                List<Gene> genes = new ArrayList<>();

                for (Schedule schedule : schedules) {
                    int weeklyOccurrences = schedule.getWeekTimes() / schedule.getConsecutiveSections(); // 上课次数
                    List<Integer> weekDays = new ArrayList<>();
                    List<Integer> slotBegins = new ArrayList<>();
                    List<Integer> slotEnds = new ArrayList<>();
                    Course matchedCourse = null; // 初始化变量保存匹配的课程
                    for (Course course : courses) {
                        if (schedule.getCourseId() .equals(course.getCourseId())) {
                            matchedCourse = course; // 保存匹配的课程
                            break;
                        }
                    }

                    generateScheduleTimes(schedule, weeklyOccurrences, weekDays, slotBegins, slotEnds, rand);
                    Gene gene = new Gene(schedule,matchedCourse, weekDays, slotBegins, slotEnds);
                    List<String> matchedRoomIds = new ArrayList<>();
                    for (Classroom classroom : classrooms) {

                        if (classroom.getCampus().equals(schedule.getCampus()) && classroom.getRoomType().equals(matchedCourse.getRoomType()) && classroom.getMaxCapacity() >= schedule.getStudent_count()) {
                            matchedRoomIds.add(classroom.getRoomId());
                        }
                    }
                    if (!matchedRoomIds.isEmpty()){
                        int randomIndex = rand.nextInt(matchedRoomIds.size());
                        gene.setRoomID(matchedRoomIds.get(randomIndex));
                        genes.add(gene);
                    }else {
                        continue;
                    }

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
                for (int i = newPopulation.getIndividuals().size(); i < popSize; i++) {
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
                    newPopulation.setIndividuals(Collections.singletonList(child));
                }


            }
        }

        // 按适应度排序种群（升序）
        private List<Individual> sortByFitness(Population population, List<Double> fitnessValues) {
            // 获取种群大小，并验证数据一致性
            int popSize = fitnessValues.size();
            if (popSize != population.individuals.size()) {
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
                sorted.add(population.individuals.get(index));
            }

            return sorted;
        }


        private static boolean hasConflict(Gene gene1, Gene gene2) {
            // 检查周次是否重叠
            List<String> classes1 = gene1.getSchedule().getClasses();
            List<String> classes2 = gene2.getSchedule().getClasses();
            boolean result = false;
            for (int i = 0;i < gene1.getSlotBegin().size();i++ ){
                for (int j = 0;j < gene2.getSlotBegin().size();j++ ){
                    if((gene1.getSlotBegin().get(i) <= gene2.getSlotEnd().get(j) || gene2.getSlotBegin().get(j) <= gene1.getSlotEnd().get(i))
                            && Objects.equals(gene1.getWeekDay().get(i), gene2.getWeekDay().get(j))){
                        if (classes1.stream().anyMatch(classes2::contains) || Objects.equals(gene1.getSchedule().getTeacherId(), gene2.getSchedule().getTeacherId()) || Objects.equals(gene1.getRoomID(), gene2.getRoomID())){
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
            List<Gene> genes = individual.genes();
            for (int i = 0; i < genes.size(); i++) {

                for(int k = 0;k < genes.get(i).getSlotBegin().size();k++){
                    if (genes.get(i).getSlotBegin().get(k) == 1){
                        fitness += 1;
                    }
                    if (genes.get(i).getCourse().getCourseName().contains("体育")){
                        fitness += 2;
                    }

                }
                for (int j = i + 1; j < genes.size(); j++) {
                    Gene gene1 = genes.get(i);
                    Gene gene2 = genes.get(j);
                    if ((gene1.getSchedule().getWeekBegin() <= gene2.getSchedule().getWeekEnd()) ||
                            (gene1.getSchedule().getWeekEnd() >= gene2.getSchedule().getWeekBegin())){
                        if (hasConflict(gene1,gene2)) fitness += 5; // 存在冲突就增加

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
                    int courseLength = geneToMutate.getSlotEnd().get(i) - geneToMutate.getSlotBegin().get(i);
                    // 生成新起始时间
                    int newSlotBegin = begin_random(courseLength + 1);

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
            for (int i = 0; i < population.individuals.size(); i++) {
                Individual current = population.individuals.get(i);
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
            List<Gene> genes = bestIndividual.genes();


            for (int i = 0; i < genes.size(); i++) {
                for (int j = i + 1; j < genes.size(); j++) {
                    Gene gene1 = genes.get(i);
                    Gene gene2 = genes.get(j);
                    if ((gene1.getSchedule().getWeekBegin() <= gene2.getSchedule().getWeekEnd()) ||
                            (gene1.getSchedule().getWeekEnd() >= gene2.getSchedule().getWeekBegin())){
                        if (hasConflict(gene1,gene2)){
                            adjustGeneToEvening(gene1,gene2);

                            }
                        }
                    }

                }

        }

        // 新增方法：调整单个Gene到晚上
        private static void adjustGeneToEvening(Gene gene1, Gene gene2) {
            List<String> classes1 = gene1.getSchedule().getClasses();
            List<String> classes2 = gene2.getSchedule().getClasses();

            for (int i = 0;i<gene1.getSlotBegin().size();i++ ){
                for (int j = 0;j<gene2.getSlotBegin().size();j++ ){
                    if((gene1.getSlotBegin().get(i) <= gene2.getSlotEnd().get(j) || gene2.getSlotBegin().get(j) <= gene1.getSlotEnd().get(i)) && Objects.equals(gene1.getWeekDay().get(i), gene2.getWeekDay().get(j))){

                        if (classes1.stream().anyMatch(classes2::contains) || Objects.equals(gene1.getSchedule().getTeacherId(), gene2.getSchedule().getTeacherId()) || Objects.equals(gene1.getRoomID(), gene2.getRoomID())){
                            int courseTime1 = gene1.getSlotEnd().get(i) - gene1.getSlotBegin().get(i);
                            int courseTime2 = gene2.getSlotEnd().get(j) - gene2.getSlotBegin().get(j);
                            if(courseTime1<=courseTime2){
                                gene1.getSlotBegin().set(i, 9);
                                gene1.getSlotEnd().set(i, 9 + courseTime1);
                            }
                            else {
                                gene2.getSlotBegin().set(j, 9);
                                gene2.getSlotEnd().set(j, 9 + courseTime2);
                            }


                        }
                    }
                }

            }

        }



    }

}
