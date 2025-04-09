package top.zfmx.aipaike.entity;

import lombok.Data;

/**
 * @author scja26
 */
@Data
public class AdjustmentRequest {
    private int week;
    private int weekDay;
    private int slotStart;
    private int slotEnd;
}
