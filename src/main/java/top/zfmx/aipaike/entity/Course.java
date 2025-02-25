package top.zfmx.aipaike.entity;

import lombok.Data;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
public class Course {

    private String courseId;
    private String courseType;//课程类型



    private String roomType;//指定教室类型
    private String campus;
    private String department;//开课院系
    public String getCourseId() {
        return courseId;
    }

    public String getCourseType() {
        return courseType;
    }

    public String getRoomType() {
        return roomType;
    }

    public String getCampus() {
        return campus;
    }

    public String getDepartment() {
        return department;
    }
    public Course(String courseId, String courseType, String campus, String roomType, String department) {
        this.courseId = courseId;
        this.courseType = courseType;
        this.campus = campus;
        this.roomType = roomType;
        this.department = department;
    }


    public void setRoomId(String roomId) {
    }
}
