package top.zfmx.aipaike.entity;

import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

/**
 * 结果导出数据
 *
 * @author zfmx
 * @version 0.0.1
 **/
@Data
public class ClassResult implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    private Long id;
    private String teacher;
    private String classroomId;
    private Integer week;
    private Integer startTime;
    private Integer endTime;
    private String startWeek;
    private String endWeek;
    private String belong;
}
