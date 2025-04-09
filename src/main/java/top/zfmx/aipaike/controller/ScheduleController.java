package top.zfmx.aipaike.controller;

import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import top.zfmx.aipaike.entity.ScheduleResult;
import top.zfmx.aipaike.service.ScheduleResultService;

import java.util.List;

/**
 * @author lima
 * @version 0.0.1
 **/
@RestController
public class ScheduleController {

    @Resource
    private ScheduleResultService scheduleResultService;

    @GetMapping("/getSchedule")
    public List<ScheduleResult> getSchedule(@RequestParam String className) {
        return scheduleResultService.getScheduleByClassName(className);
    }
}
