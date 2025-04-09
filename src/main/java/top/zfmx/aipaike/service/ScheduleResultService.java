package top.zfmx.aipaike.service;

import com.baomidou.mybatisplus.extension.service.IService;
import top.zfmx.aipaike.entity.ScheduleResult;

import java.util.List;

/**
 * @author scja26
 * @version 0.0.1
 **/
public interface ScheduleResultService
        extends IService<ScheduleResult> {
    List<ScheduleResult> getScheduleByClassName(String className);
}