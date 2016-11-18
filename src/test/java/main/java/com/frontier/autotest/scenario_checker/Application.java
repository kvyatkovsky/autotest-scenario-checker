import org.jbehave.core.model.Story;
import report.Reporter;
import utils.JBehaveStoriesServiceImpl;
import utils.StoryChecker;

import java.util.List;

public class Application {



    public static void main(final String[] args) {
        JBehaveStoriesServiceImpl jBehaveStoriesService = new JBehaveStoriesServiceImpl();
        List<Story> stories = jBehaveStoriesService.getAllStoryFiles();
        StoryChecker storyChecker = new StoryChecker();

        stories.forEach(story -> storyChecker.checkStory(story));
        Reporter reporter = Reporter.getInstance();
        reporter.printResult();


        int debugStopper = 0;
    }
}
