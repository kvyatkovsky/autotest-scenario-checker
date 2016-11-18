package utils;

import org.jbehave.core.model.Scenario;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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

    public String checkScenarioStructure(final String scenarioShortName, final List<String> stepKeys) {

        String previousKey;
        String currentKey = "";

        if (isScenarioStartsWithGiven(stepKeys)) {
            previousKey = GIVEN;
            for (int i = 1; i < stepKeys.size(); i++) {
                currentKey = stepKeys.get(i).split(" ")[0];
                if (currentKey.equals(GIVEN)) {

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

    private boolean isScenarioStartsWithGiven(List<String> stepKeys) {
        if (!stepKeys.get(0).startsWith(GIVEN)) {
            return false;
        }
        return true;
    }

}
