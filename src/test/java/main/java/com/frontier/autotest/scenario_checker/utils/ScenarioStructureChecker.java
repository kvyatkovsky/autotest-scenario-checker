package main.java.com.frontier.autotest.scenario_checker.utils;

import org.jbehave.core.model.Lifecycle;
import org.jbehave.core.model.Scenario;

import java.util.List;

public class ScenarioStructureChecker {

    private ScenarioStructureChecker() {
    }

    private static ScenarioStructureChecker scenarioStructureChecker;

    public static ScenarioStructureChecker getInstance() {
        if (scenarioStructureChecker == null) {
            return new ScenarioStructureChecker();
        } else {
            return scenarioStructureChecker;
        }
    }

    private static final String GIVEN = "Given";
    private static final String WHEN = "When";
    private static final String THEN = "Then";

    public String checkScenarioStructureWithoutLifecycle(final String scenarioShortName, final List<String> stepKeys) {

        String previousKey;
        String currentKey = "";

        if (isScenarioStartsWithGiven(stepKeys)) {
            previousKey = GIVEN;
            for (int i = 1; i < stepKeys.size(); i++) {
                currentKey = stepKeys.get(i).split(" ")[0];
                if (currentKey.equals(GIVEN)) {
                    return scenarioShortName + " has GIVEN key inside";
                }
                if (currentKey.equals(previousKey)) {
                    return scenarioShortName + " has " + previousKey + " key repeats twice";
                }
                previousKey = currentKey;
            }

            if (!currentKey.equals(THEN)) {
                return scenarioShortName + " scenario doesn't ends with Then key";
            }
        } else {
            return scenarioShortName + " scenario doesn't starts with Given key";
        }
        return null;
    }

    private String checkScenarioStructureWithLifecycle(final String scenarioShortName, final List<String> stepKeys) {

        String previousKey;
        String currentKey = "";

        if (isScenarioStartsWithGiven(stepKeys)) {
            previousKey = stepKeys.get(1);

            for (int i = 2; i < stepKeys.size(); i++) {
                currentKey = stepKeys.get(i).split(" ")[0];
                if (currentKey.equals(GIVEN)) {
                    return scenarioShortName + " has GIVEN key inside";
                }
                if (currentKey.equals(previousKey)) {
                    return scenarioShortName + " has " + previousKey + " key repeats twice";
                }
                previousKey = currentKey;
            }

            if (!currentKey.equals(THEN)) {
                return scenarioShortName + " scenario doesn't ends with Then key";
            }
        } else {
            return scenarioShortName + " scenario doesn't starts with Given key";
        }
        return null;
    }

 public String checkScenarioStructure(final Scenario scenario, final Lifecycle lifecycle) {
        String scenarioShortName = ScenarioInfoUtils.getScenarioShortTitle(scenario);

        if(lifecycle.getBeforeSteps().isEmpty()){
           return checkScenarioStructureWithoutLifecycle(scenarioShortName, ScenarioInfoUtils.getKeySteps(lifecycle, scenario));
        }
        else{
           return checkScenarioStructureWithLifecycle(scenarioShortName, ScenarioInfoUtils.getKeySteps(lifecycle, scenario));
        }
    }

    private boolean isScenarioStartsWithGiven(List<String> stepKeys) {
        if (!stepKeys.get(0).startsWith(GIVEN)) {
            return false;
        }
        return true;
    }

}
