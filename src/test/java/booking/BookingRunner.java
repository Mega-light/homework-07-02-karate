package booking;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.extension.Extension;

@ExtendWith(KarateExtension.class)
public class BookingRunner {
    @Test
    void executeKarateTest() {
        String path = getClass().getPackageName().replace('.', '/');
        // Even though you can have a specific feature file, it does not make sense for this runner.
        Results results = Runner.path("classpath:" + path).outputCucumberJson(true).parallel(5);
    }
}

class KarateExtension extends Karate implements Extension {

}
