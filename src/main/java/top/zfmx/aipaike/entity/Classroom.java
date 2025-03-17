package top.zfmx.aipaike.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Classroom implements Serializable {
    @Serial
    private static final long serialVersionUID = 1123341L;
    private String roomId;
    private String campus;
    private String roomType;
    private Integer maxCapacity;
    private Integer floor;
    private String roomName;
    private String building;
}
