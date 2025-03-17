package top.zfmx.aipaike.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.util.List;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Schedule implements Serializable {

    @Serial
    private final static long serialVersionUID = 11231L;

    private String courseId;
    private String teacherId;
    private String teacherName;
    private List<String> classes;
    private String campus;
    private int student_count;
    private Integer weekBegin;//第几周开始上
    private Integer weekEnd;
    private Integer weekTimes;   // 周学次
    private Integer consecutiveSections;    //  连排节次

}
