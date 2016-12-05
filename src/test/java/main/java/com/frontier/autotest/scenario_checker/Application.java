package main.java.com.frontier.autotest.scenario_checker;

import org.jbehave.core.model.Story;


import java.util.List;
import report.Reporter;
import utils.JBehaveStoriesServiceImpl;
import utils.StoryChecker;
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
