package utils;

import org.jbehave.core.model.Lifecycle;
import org.jbehave.core.model.Scenario;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ScenarioInfoUtils {

    private static final String AND = "And";

    public static List<String> getKeySteps(List<String> steps) {

        List<String> keys = new ArrayList<>();
        keys.addAll(excludeAndSteps(steps));

        return keys;
    }

    public static String getScenarioShortTitle(Scenario scenario) {
        return scenario.getTitle().split(" ")[0];
    }

    private static List<String> excludeAndSteps(List<String> steps){
        return steps.stream().filter(step -> !step.startsWith(AND))
                .collect(Collectors.toList());
    }

}
