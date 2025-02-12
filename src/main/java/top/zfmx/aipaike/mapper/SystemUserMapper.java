package top.zfmx.aipaike.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import top.zfmx.aipaike.entity.SystemUser;

/**
 * SystemUserMapper 系统用户映射器
 * @version 0.0.1
 * @author zfmx
 */
@Mapper
public interface SystemUserMapper
        extends BaseMapper<SystemUser> {
}
