// Population.java
package top.zfmx.aipaike.algorithm;

import java.util.Arrays;
import java.util.Comparator;

public class Population {
    private Individual[] individuals;
    public Population(int populationSize) {
        individuals = new Individual[populationSize];
    }

    public Individual[] getIndividuals() { return individuals; }
    public Individual getIndividual(int index) {
        if (index < 0 || index >= individuals.length) {
            throw new IndexOutOfBoundsException("Invalid individual index: " + index);
        }
        return individuals[index];
    }

    public void setIndividual(int index, Individual individual) {
        individuals[index] = individual;
    }


}