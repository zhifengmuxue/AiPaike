package top.zfmx.aipaike.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Classroom {

    private String roomId;
    private String campus;
    private String roomType;
    private Integer maxCapacity;
    private Integer floor;
    private String roomName;
    private String building;
}
