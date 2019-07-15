#!/bin/bash
sqoop job --delete cust5
sqoop job --delete pro5
sqoop job --delete sales5
sqoop job --delete cust6
sqoop job --delete pro6
sqoop job --delete sales6
sqoop job --create cust5 -- import \
--connect jdbc:mysql://Jshu1:3306/sales_source?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table customer \
--delete-target-dir \
--target-dir /ods/ods_customer \
--fields-terminated-by '\001' \
##
sqoop job --create pro5 -- import \
--connect jdbc:mysql://Jshu1:3306/sales_source?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table product \
--delete-target-dir \
--target-dir /ods/ods_product \
--fields-terminated-by '\001' \
##
sqoop job --create sales5 -- import \
--connect jdbc:mysql://Jshu1:3306/sales_source?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table sales_order \
--delete-target-dir \
--target-dir /ods/ods_sales_order \
--fields-terminated-by '\001' \
##
sqoop job --create cust6 -- import \
--connect jdbc:mysql://Jshu1:3306/sales_source?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table customer \
--target-dir /ods/ods_customer1 \
--incremental append \
--check-column customer_number \
--last-value 0 \
--fields-terminated-by '\001' \
##
sqoop job --create pro6 -- import \
--connect jdbc:mysql://Jshu1:3306/sales_source?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table product \
--target-dir /ods/ods_product1 \
--incremental append \
--check-column product_code \
--last-value 0 \
--fields-terminated-by '\001' \
##
sqoop job --create sales6 -- import \
--connect jdbc:mysql://Jshu1:3306/sales_source?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table sales_order \
--target-dir /ods/ods_sales_order1 \
--incremental append \
--check-column order_number \
--last-value 0 \
--fields-terminated-by '\001' \