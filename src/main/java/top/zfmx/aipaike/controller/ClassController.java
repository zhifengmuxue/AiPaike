package top.zfmx.aipaike.controller;

import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.entity.Schedule;
import top.zfmx.aipaike.entity.ScheduleResult;
import top.zfmx.aipaike.service.ClassroomService;
import top.zfmx.aipaike.service.CourseService;
import top.zfmx.aipaike.service.ScheduleResultService;
import top.zfmx.aipaike.service.SchedulesService;
import top.zfmx.aipaike.util.GeneticAlgorithmUtils;

import java.util.List;
import java.util.Map;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@RestController
public class ClassController {

    @Resource
    private SchedulesService schedulesService;
    @Resource
    private ClassroomService classroomService;
    @Resource
    private CourseService courseService;
    @Resource
    private ScheduleResultService scheduleResultService;
    @GetMapping("/paike")
    public String paike() {
        List<Schedule> schedules = schedulesService.list();
        List<Classroom> classrooms = classroomService.list();
        List<Course> courses = courseService.list();
        Integer popSize = schedules.size()/10;
        Double mutProb = 0.05;
        Integer eliteCout = 5;
        Integer maxlter = 20;
        Double crossProb = 0.7;

        List<ScheduleResult> run = GeneticAlgorithmUtils.run(
                schedules, classrooms, courses,
                popSize, mutProb, eliteCout, maxlter, crossProb);

        scheduleResultService.saveBatch(run);
        return null;
    }
}
