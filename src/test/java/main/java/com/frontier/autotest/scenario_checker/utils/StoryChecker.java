package utils;

import org.jbehave.core.model.Scenario;
import org.jbehave.core.model.Story;
import report.Reporter;

import java.util.LinkedHashSet;
import java.util.Set;

public class StoryChecker {

    private static ScenarioStructureChecker scenarioStructureChecker = ScenarioStructureChecker.getInstance();

    private Reporter reporter = Reporter.getInstance();

    public void checkStory(Story story) {
        Set<String> wrongScenarios = collectWrongScenarios(story);
        if (!wrongScenarios.isEmpty()) {
            reporter.addStoryCheckResult(story.getName(), wrongScenarios);
        }
    }

    private Set<String> collectWrongScenarios(Story story) {
        Set<String> wrongScenarios = new LinkedHashSet<>();

        for (Scenario scenario : story.getScenarios()) {
            String result = scenarioStructureChecker.checkScenarioStructure(
                    ScenarioInfoUtils.getScenarioShortTitle(scenario),
                    ScenarioInfoUtils.getKeySteps(story.getLifecycle(),scenario));
            if (result != null) {
                wrongScenarios.add(result);
            }
        }
        return wrongScenarios;
    }
}
