package top.zfmx.aipaike.entity;

import lombok.AllArgsConstructor;
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
@AllArgsConstructor
public class ScheduleResult implements Serializable {

    @Serial
    private static final long serialVersionUID = 13232L;

    private int weekDay;      // 星期几（1-5）
    private int slotStart;   // 开始节次
    private int slotEnd;     // 结束节次
    private int weekBegin;     // 开始周次
    private int weekEnd;     // 结束周次
    private String courseName; // 课程名称
    private String teacherName;    // 教师名字
    private String classroomName; // 教室名字
    private String roomBuilding; // 教室教学楼
    private int roomFloor; // 教室楼层
}