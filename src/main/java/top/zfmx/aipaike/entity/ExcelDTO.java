package top.zfmx.aipaike.entity;

import lombok.Data;

/**
 * 结果导出数据
 *
 * @author zfmx
 * @version 0.0.1
 **/
@Data
public class ExcelDTO {
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
