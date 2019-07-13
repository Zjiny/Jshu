package Spark

import Constant.Constant
import JdbcUtil.JdbcUtil
import LoadConfig.LoadConfig
import org.apache.hadoop.mapred.Master
import org.apache.spark.SparkConf
import org.apache.spark.sql.{DataFrame, SaveMode, SparkSession}

import scala.sys.SystemProperties

object Userbasic {
  def main(args: Array[String]): Unit = {
    System.setProperty("HADOOP_USER_NAME","root")
    val conf = new SparkConf()
    conf.set("spark.debug.maxToStringFields","100")
    conf.set("spark.sql.shuffle.partitions","1")
    val spark = SparkSession.builder().master(Constant.MASTER).
      appName(Constant.APPNAME).config(conf).enableHiveSupport().getOrCreate()
    val hivesql = LoadConfig.getProperty("user")
    val df = spark.sql(hivesql)
   df.rdd.saveAsTextFile("E:\\result")
//    spark.sql(sql)
//    val mysql = LoadConfig.getProperty("query")
//    val df: DataFrame = spark.sql(mysql)
//    val url = JdbcUtil.proVaule()._2
//    val property=JdbcUtil.proVaule()._1
//
//    df.write.mode(SaveMode.Append).jdbc(url,"dm_user_basic",property)
  }
}
