package top.zfmx.aipaike.util.genetic_algorithm;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

/**
 * 个体
 *
 * @author lima
 * @version 0.0.1
 **/
@Data
@AllArgsConstructor
public class Individual {
    private List<Gene> genes;
}
