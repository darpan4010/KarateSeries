package performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._


class test extends Simulation
{
  val getSingleUser = scenario("Create a booking").exec(karateFeature("classpath:performance/CreateBooking.feature"))
  
  setUp(
    getSingleUser.inject(rampUsers(10) during (5 seconds))
    
  )
}