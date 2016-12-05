package utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.jbehave.core.model.Story;
import org.jbehave.core.parsers.RegexStoryParser;
import org.jbehave.core.parsers.StoryParser;

public class JBehaveStoriesServiceImpl {


    private StoryParser parser = new RegexStoryParser();
    private static Logger logger = Logger.getLogger(JBehaveStoriesServiceImpl.class);
    private static String path = "/Users/maximkvyatkovsky/Documents/workspace/ctco-orke/frontier_autotests/all-tests-parent/serenity-bdd-tests/src/test/resources/stories/WEB_UI/Frontier_main_ui";
//    private static String path = "/Users/maximkvyatkovsky/Documents/workspace/frontier-autotest-scenario-checker/src/test/java/main/resources";



    public List<Story> getAllStoryFiles() {
        File mainFolder = new File(path);
        List<Story> fileList = new ArrayList<>();
        FileUtils.listFiles(mainFolder, new String[]{"story"}, true).forEach(storyFile -> {
            try {
                fileList.add(parser.parseStory(FileUtils.readFileToString(storyFile).replace("Examples:", "")
                        , storyFile.getPath()));
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
        return fileList;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
