
import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;


class PerformansRunner {

    @Karate.Test
    Results testUsersApi() {
        return Karate.run("classpath:performans.feature").parallel(5);
    }
}
