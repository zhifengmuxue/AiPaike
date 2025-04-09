package top.zfmx.aipaike.controller;

import io.swagger.v3.oas.annotations.parameters.RequestBody;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import top.zfmx.aipaike.entity.*;
import top.zfmx.aipaike.response.CommonResponseResult;
import top.zfmx.aipaike.service.ClassroomService;
import top.zfmx.aipaike.service.CourseService;
import top.zfmx.aipaike.service.ScheduleResultService;
import top.zfmx.aipaike.service.SchedulesService;
import top.zfmx.aipaike.util.AdjustScheduleUtils;
import top.zfmx.aipaike.util.genetic_algorithm.TotalEntrance;

import java.util.List;

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
    public CommonResponseResult<Object> paike() {
        List<Schedule> schedules = schedulesService.list();
        List<Classroom> classrooms = classroomService.list();
        List<Course> courses = courseService.list();
        Integer popSize = schedules.size()/10;
        Double mutProb = 0.05;
        Integer eliteCout = 10;
        Integer maxlter = 1;
        Double crossProb = 0.7;
        System.out.println("算法开始");
        List<ScheduleResult> run = TotalEntrance.run(
                schedules, classrooms, courses,
                popSize, mutProb, eliteCout, maxlter, crossProb);
        System.out.println("算法结束");
        scheduleResultService.saveBatch(run);
        return CommonResponseResult.success("排课完成",null);
    }

    @GetMapping("/adjust")
    public String adjust(
            @RequestBody AdjustmentRequest requests) { // 通过请求体接收参数

        List<ScheduleResult> scheduleResults = scheduleResultService.list();

        // 设置遗传算法参数（可从配置读取或前端传入）
        int popSize = scheduleResults.size()/10;
        double mutProb = 0.05;
        int eliteCount = 1;
        int maxIter = 2;
        double crossProb = 0.7;
        System.out.println("算法开始");
        // 调用调整算法
        List<ScheduleResult> adjustedResults = AdjustScheduleUtils.run(
                scheduleResults,
                requests,
                popSize,
                mutProb,
                eliteCount,
                maxIter,
                crossProb
        );
        System.out.println("算法结束");
        // 保存并返回结果
        scheduleResultService.saveBatch(adjustedResults);
        return null;
    }
}
