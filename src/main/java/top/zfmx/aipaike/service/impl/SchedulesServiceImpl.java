package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.Schedule;
import top.zfmx.aipaike.mapper.SchedulesMapper;
import top.zfmx.aipaike.service.SchedulesService;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Service
public class SchedulesServiceImpl
        extends ServiceImpl<SchedulesMapper, Schedule>
        implements SchedulesService {
}
