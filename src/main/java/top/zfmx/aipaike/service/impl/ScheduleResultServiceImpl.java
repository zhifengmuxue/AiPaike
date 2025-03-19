package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.ScheduleResult;
import top.zfmx.aipaike.mapper.ScheduleResultMapper;
import top.zfmx.aipaike.service.ScheduleResultService;
@Service
public class ScheduleResultServiceImpl
    extends ServiceImpl<ScheduleResultMapper, ScheduleResult>
    implements ScheduleResultService {
}
