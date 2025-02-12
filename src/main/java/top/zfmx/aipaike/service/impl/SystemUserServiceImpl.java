package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.SystemUser;
import top.zfmx.aipaike.mapper.SystemUserMapper;
import top.zfmx.aipaike.service.SystemUserService;

@Service
public class SystemUserServiceImpl
        extends ServiceImpl<SystemUserMapper, SystemUser>
        implements SystemUserService {
}
