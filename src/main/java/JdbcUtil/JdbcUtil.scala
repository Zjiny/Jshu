package JdbcUtil

import java.util.Properties

import LoadConfig.LoadConfig

object JdbcUtil {
    def proVaule():(Properties,String)={
      val properties = new Properties ()
      properties.setProperty("user",LoadConfig.getProperty("jdbc.user"))
      properties.getProperty("password",LoadConfig.getProperty("jdbc.password"))
//      properties.setProperty("driver",LoadConfig.getProperty("jdbc.driver"))
      val url = LoadConfig.getProperty("jdbc.url")
      (properties,url)

    }
}
