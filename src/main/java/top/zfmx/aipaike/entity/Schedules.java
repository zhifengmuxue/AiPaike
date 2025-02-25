package top.zfmx.aipaike.entity;

import lombok.Data;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
public class Schedules {

    private String courseId;
    private String teacher;
    private List<String> classes;

    private int student_count;
    private Integer weekBegin;//第几周开始上
    private Integer weekEnd;
    private Integer weekTimes;   // 周学次
    private Integer consecutiveSections;    //  连排节次

    public Schedules(String courseId,String teacher, String classes,Integer student_count, Integer weekBegin, Integer weekEnd, Integer weekTimes, Integer consecutiveSections) {
        this.courseId = courseId;
        this.teacher = teacher;
        this.student_count = student_count;
        // 处理班级字符串的分割和清理
        if (classes == null) {
            this.classes = Collections.emptyList();
        } else {
            this.classes = Arrays.stream(classes.split(","))
                    .map(String::trim)      // 去除每个班级的前后空格
                    .filter(s -> !s.isEmpty()) // 过滤空字符串
                    .collect(Collectors.toList());
        }
        this.weekBegin = weekBegin;
        this.weekEnd = weekEnd;
        this.weekTimes = weekTimes;
        this.consecutiveSections = consecutiveSections;
    }
    public String getTeacher() {
        return teacher;
    }
    public String getCourseId() {
        return courseId;
    }

    public List<String> getClasses() {
        return classes;
    }

    public Integer getWeekBegin() {
        return weekBegin;
    }

    public Integer getWeekEnd() {
        return weekEnd;
    }

    public Integer getWeekTimes() {
        return weekTimes;
    }

    public Integer getConsecutiveSections() {
        return consecutiveSections;
    }
    public int getStudent_count() {
        return student_count;
    }


}
