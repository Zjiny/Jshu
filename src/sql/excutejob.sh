#!/bin/bash
#执行job
sqoop job --exec cust5
sqoop job --exec pro5
sqoop job --exec sales5
sqoop job --exec cust6
sqoop job --exec pro6
sqoop job --exec sales6
#导入数据
hive -e "load data inpath '/ods/ods_customer/*' into table sales_source.customer";
hive -e "load data inpath '/ods/ods_product/*' into table sales_source.product ";
hive -e "load data inpath '/ods/ods_sales_order/*' into table sales_source.sales_order";
hive -e "load data inpath '/ods/ods_customer1/*' into table sales_source.customer1";
hive -e "load data inpath '/ods/ods_product1/*' into table sales_source.product1";
hive -e "load data inpath '/ods/ods_sales_order1/*' into table sales_source.sales_order1";
