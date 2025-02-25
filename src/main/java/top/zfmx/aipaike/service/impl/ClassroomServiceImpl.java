package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.Classroom;
import top.zfmx.aipaike.mapper.ClassroomMapper;
import top.zfmx.aipaike.service.ClassroomService;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Service
public class ClassroomServiceImpl
        extends ServiceImpl<ClassroomMapper, Classroom>
        implements ClassroomService {
}
