package room;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;


public class RoomRunner {

    @Test
    void executeKarateTest() {
        String path = getClass().getPackageName().replace('.', '/');
        // Even though you can have a specific feature file, it does not make sense for this runner.
        Results results = Runner.path("classpath:" + path).outputCucumberJson(true).parallel(5);
    }
}
