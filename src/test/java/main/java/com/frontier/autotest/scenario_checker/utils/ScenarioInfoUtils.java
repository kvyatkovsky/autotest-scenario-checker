package main.java.com.frontier.autotest.scenario_checker.utils;

import org.jbehave.core.model.Lifecycle;
import org.jbehave.core.model.Scenario;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ScenarioInfoUtils {

    private static final String AND = "And";

    public static List<String> getKeySteps(Lifecycle lifecycle, Scenario scenario) {

        List<String> keys = new ArrayList<>();

        if (!lifecycle.getBeforeSteps().isEmpty()){
            keys.addAll(excludeAndSteps(lifecycle.getBeforeSteps()));
        }

        keys.addAll(excludeAndSteps(scenario.getSteps()));

        if (!lifecycle.getAfterSteps().isEmpty()){
            keys.addAll(excludeAndSteps(lifecycle.getAfterSteps()));
        }

        return keys;
    }

    public static String getScenarioShortTitle(Scenario scenario) {
        return scenario.getTitle().split(" ")[0];
    }

    private static List<String> excludeAndSteps(List<String> steps){
        return steps.stream().filter(step -> !step.startsWith(AND) & !step.startsWith("!--"))
                .collect(Collectors.toList());
    }

}
