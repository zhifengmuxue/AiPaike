package top.zfmx.aipaike.entity;

import java.util.List;

/**
 * @author zfmx
 * @version 0.0.1
 **/
public class CourseResult {

    private Long id;
    private List<String> classes;
    private Integer weekBegin;
    private Integer weekEnd;
    private Integer weekDay;    // 周几上课
    private Integer weekTimes;   // 周学次
    private Integer consecutiveSections;    //  连排节次
    private Integer slotBegin;  // 第几节开始上课
    private Integer slotEnd;    // 第几节下课
}
