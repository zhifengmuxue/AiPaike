// Individual.java
package top.zfmx.aipaike.algorithm;

import top.zfmx.aipaike.entity.Database;
import top.zfmx.aipaike.entity.Schedules;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class Gene {

    private Schedules schedule;
    private List<Integer>  weekDay;
    private List<Integer> slotBegin;
    private List<Integer> slotEnd;
    private String roomID;

    // 构造函数
    public Gene( Schedules schedule, List<Integer>  weekDay,
                       List<Integer> slotBegin, List<Integer> slotEnd) throws SQLException {
        this.schedule = schedule;
        this.weekDay = weekDay;
        this.slotBegin = slotBegin;
        this.slotEnd = slotEnd;
        Database db = null;
        try {
            db = new Database("jdbc:mysql://localhost:3306/aipaike", "root", "123456");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Map<String, String> courseDetails = db.getCourseDetailsById(schedule.getCourseId());
        String campus = courseDetails.get("campus");
        String roomType = courseDetails.get("roomType");
        this.roomID = db.findClassroom(roomType, campus, schedule.getStudent_count());
        db.close();

    }



    public Schedules getSchedule() { return schedule; }
    public List<Integer>  getWeekDay() { return weekDay; }
    public List<Integer> getSlotBegin() { return slotBegin; }
    public List<Integer> getSlotEnd() { return slotEnd; }
    public String getRoomID() { return roomID; }

    public void setWeekDay(List<Integer>  weekDay) { this.weekDay = weekDay; }
    public void setSlot(List<Integer> begin, List<Integer> end) {
        this.slotBegin = begin;
        this.slotEnd = end;
    }
    public void setRoomID(String roomID) { this.roomID = roomID; }
}