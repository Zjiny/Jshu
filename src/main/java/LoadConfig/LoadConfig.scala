package LoadConfig

import java.util.Properties

import scala.util.Properties

object LoadConfig {
  val properties = new Properties()
   try {
     val stream1 = LoadConfig.getClass().getClassLoader.getResourceAsStream("./basic.properties")
     val stream2 = LoadConfig.getClass().getClassLoader.getResourceAsStream("BasicUser.properties")
     val stream3 = LoadConfig.getClass().getClassLoader.getResourceAsStream("usermodel.properties")
     properties.load(stream1)
     properties.load(stream2)
     properties.load(stream3)
   }catch {
     case e:Exception=>{e.printStackTrace()}
   }
  def getProperty(key:String): String ={
    properties.getProperty(key)
  }
}
