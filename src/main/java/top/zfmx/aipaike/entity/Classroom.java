package top.zfmx.aipaike.entity;

import lombok.Data;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
public class Classroom {
    private String roomId;

    public Classroom(String roomId, String campus, String roomType, Integer maxCapacity) {
        this.roomId = roomId;
        this.campus = campus;
        this.roomType = roomType;
        this.maxCapacity = maxCapacity;
    }

    private String campus;
    private String roomType;
    private Integer maxCapacity;
    public String getRoomId() {
        return roomId;
    }

    public String getCampus() {
        return campus;
    }

    public String getRoomType() {
        return roomType;
    }

    public Integer getMaxCapacity() {
        return maxCapacity;
    }


}
