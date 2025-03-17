package top.zfmx.aipaike.entity;

import lombok.Data;

@Data
public class AdjustmentRequest {
    private int week;       // 周次
    private int weekDay;    // 星期几
    private int slotStart;  // 开始节次
    private int slotEnd;    // 结束节次
}
