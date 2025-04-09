package top.zfmx.aipaike.util.genetic_algorithm;

import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.entity.Schedule;
import top.zfmx.aipaike.entity.ScheduleResult;

import java.util.ArrayList;
import java.util.List;

import static top.zfmx.aipaike.util.genetic_algorithm.GeneticAlgorithm.adjustConflictsToEvening;


/**
 * @author lima
 * @version 0.0.1
 **/
public class TotalEntrance {

    public static List<ScheduleResult> run(List<Schedule> schedules,
                                           List<Classroom> classrooms ,
                                           List<Course> courses,
                                           Integer popSize,
                                           Double mutProb,
                                           Integer eliteCount,
                                           Integer epoch,
                                           Double crossProb){

        GeneticAlgorithm ga = new GeneticAlgorithm(popSize, mutProb, eliteCount, epoch, crossProb);

        Population population = ga.initPopulation(schedules,classrooms,courses);

        ga.evolve(population, classrooms);

        Individual bestIndividual = ga.getBestIndividual(population,classrooms);
        adjustConflictsToEvening(bestIndividual);

        return convertToClassTimetable(bestIndividual,classrooms);
    }

    public static List<ScheduleResult> convertToClassTimetable(Individual bestIndividual, List<Classroom> classrooms) {
        List<ScheduleResult> scheduleResults = new ArrayList<>();
        for (Gene gene : bestIndividual.getGenes()) {
            Schedule schedule = gene.getSchedule();
            List<String> classes = schedule.getClasses();
            String courseName = gene.getCourse().getCourseName();
            String teacher = schedule.getTeacherName();
            String roomId = gene.getRoomId();

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
            for (int i = 0; i < gene.getWeekDays().size(); i++) {
                int weekDay = gene.getWeekDays().get(i);
                int slotStart = gene.getSlotBegins().get(i);
                int slotEnd = gene.getSlotEnds().get(i);

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
                            className
                    );

                    scheduleResults.add(result);
                }
            }
        }

        return scheduleResults;
    }
}
