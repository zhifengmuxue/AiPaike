package top.zfmx.aipaike.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.mapper.CourseMapper;
import top.zfmx.aipaike.service.CourseService;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Service
public class CourseServiceImpl
        extends ServiceImpl<CourseMapper, Course>
        implements CourseService {
}
