package top.zfmx.aipaike.algorithm;
import java.util.List;

public class Individual {
    private final List<Gene> genes;

    public Individual(List<Gene> genes) {
        this.genes = genes;
    }
    public void setIndividual(int index) {

        Gene[] individuals = new Gene[index];
    }
    public List<Gene> getGenes() {
        return genes; }
}