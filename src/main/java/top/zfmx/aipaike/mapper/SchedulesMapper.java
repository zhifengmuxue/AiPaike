package top.zfmx.aipaike.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import top.zfmx.aipaike.entity.Schedule;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Mapper
public interface SchedulesMapper
        extends BaseMapper<Schedule> {
}
