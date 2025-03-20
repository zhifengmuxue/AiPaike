package top.zfmx.aipaike.controller;

import io.swagger.v3.oas.annotations.parameters.RequestBody;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import top.zfmx.aipaike.entity.*;
import top.zfmx.aipaike.service.ClassroomService;
import top.zfmx.aipaike.service.CourseService;
import top.zfmx.aipaike.service.ScheduleResultService;
import top.zfmx.aipaike.service.SchedulesService;
import top.zfmx.aipaike.util.AdjustScheduleUtils;
import top.zfmx.aipaike.util.GeneticAlgorithmUtils;

import java.util.List;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@RestController
public class AdjustController {
    @Resource
    private ScheduleResultService scheduleResultService;
    @GetMapping("/adjust")
    public String adjust(
            @RequestBody AdjustmentRequest requests) { // 通过请求体接收参数

        List<ScheduleResult> scheduleResults = scheduleResultService.list();

        // 设置遗传算法参数（可从配置读取或前端传入）
        int popSize = scheduleResults.size()/10;
        double mutProb = 0.05;
        int eliteCount = 5;
        int maxIter = 20;
        double crossProb = 0.7;

        // 调用调整算法
        List<ScheduleResult> adjustedResults = AdjustScheduleUtils.run(
                scheduleResults,
                requests,   // 传入前端请求参数
                popSize,
                mutProb,
                eliteCount,
                maxIter,
                crossProb
        );

        // 保存并返回结果
        scheduleResultService.saveBatch(adjustedResults);
        return null;
    }
}
