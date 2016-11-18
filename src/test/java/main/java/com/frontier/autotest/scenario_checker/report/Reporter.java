package report;

import org.apache.log4j.Logger;

import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class Reporter {

    private static Logger logger = Logger.getLogger(Reporter.class);

    private int testCount = 0;

    private static Reporter reporter;

    private Reporter() {
        stories = new TreeMap<>();
    }

    private static Map<String, Set<String>> stories;

    public static Reporter getInstance() {
        if (reporter == null) {
            reporter = new Reporter();
            return reporter;
        } else {
            return reporter;
        }
    }

    public void addStoryCheckResult(String storyName, Set<String> result) {
        stories.put(storyName, result);
    }

    public void printResult(){
        for (Map.Entry<String, Set<String>> storyResult : stories.entrySet()){
            logger.info("---------------------------------------------------");
            logger.info(storyResult.getKey());
            storyResult.getValue().forEach(scenario -> countTestsAndWarn(scenario));

        }
        logger.info("COunt: " + testCount);
    }

    private void countTestsAndWarn(String testName){
        logger.warn(testName);
        testCount++;
    }
}
