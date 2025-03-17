package top.zfmx.aipaike.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Course implements Serializable {
    @Serial
    private static final long serialVersionUID = 1231L;
    private String courseId;
    private String courseName;
    private String courseType;//课程类型
    private String roomType;//指定教室类型
    private String department;//开课院系
}
