package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.ScheduleResult;
import top.zfmx.aipaike.mapper.ScheduleResultMapper;
import top.zfmx.aipaike.service.ScheduleResultService;

import java.util.List;

/**
 * @author scja26
 */
@Service
public class ScheduleResultServiceImpl
    extends ServiceImpl<ScheduleResultMapper, ScheduleResult>
    implements ScheduleResultService {
    @Override
    public List<ScheduleResult> getScheduleByClassName(String className) {
        return baseMapper.selectList(new LambdaQueryWrapper<ScheduleResult>().eq(ScheduleResult::getClassName, className));
    }
}
