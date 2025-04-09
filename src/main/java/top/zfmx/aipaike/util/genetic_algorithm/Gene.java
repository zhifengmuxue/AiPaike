package top.zfmx.aipaike.util.genetic_algorithm;

import lombok.AllArgsConstructor;
import lombok.Data;
import top.zfmx.aipaike.entity.Course;
import top.zfmx.aipaike.entity.Schedule;

import java.util.List;

/**
 * 基因
 *
 * @author lima
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Gene {
    private final Schedule schedule;
    private final Course course;
    private final List<Integer> weekDays;
    private final List<Integer> slotBegins;
    private final List<Integer> slotEnds;
    private String roomId;

    public Gene(Schedule schedule,Course course, List<Integer>  weekDay,
                List<Integer> slotBegin, List<Integer> slotEnd){
        this.course = course;
        this.schedule = schedule;
        this.weekDays = weekDay;
        this.slotBegins = slotBegin;
        this.slotEnds = slotEnd;
    }

}
