import com.intuit.karate.junit5.Karate;

public class KarateTestRunner {

    @Karate.Test
    Karate testApi() {
        return Karate.run("classpath:apiTest.feature","classpath:sample_post_test.feature","classpath:sample_test.feature","classpath:get-example.feature").relativeTo(getClass());
    }

}

