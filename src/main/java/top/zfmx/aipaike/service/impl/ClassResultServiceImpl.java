package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.ClassResult;
import top.zfmx.aipaike.mapper.ClassResultMapper;
import top.zfmx.aipaike.service.ClassResultService;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Service
public class ClassResultServiceImpl
        extends ServiceImpl<ClassResultMapper, ClassResult>
        implements ClassResultService {
}
