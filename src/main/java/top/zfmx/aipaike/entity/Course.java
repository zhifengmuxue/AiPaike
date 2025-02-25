package top.zfmx.aipaike.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Course {

    private String courseId;
    private String courseType;//课程类型
    private String roomType;//指定教室类型
    private String campus;
    private String department;//开课院系
}
