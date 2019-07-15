CREATE DATABASE IF NOT EXISTS sales_source ;
USE sales_source;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS sales_order;
DROP TABLE IF EXISTS customer1;
DROP TABLE IF EXISTS product1;
DROP TABLE IF EXISTS sales_order1;
CREATE TABLE customer
(
   customer_number int,
   customer_name   String,
   customer_street_address String,
   customer_zip_code int,
   customer_city String,
   customer_state String
)
location '/ods/ods_customer';
CREATE TABLE product
(
   product_code int,
   product_name String,
   product_category String
)
location '/ods/ods_product';
CREATE TABLE sales_order
(
   order_number         int,
   customer_number      int,
   product_code         int,
   order_date           string,
   entry_date           string,
   order_amount         DECIMAL
)
location '/ods/ods_sales_order';
CREATE TABLE customer1
(
   customer_number int,
   customer_name   String,
   customer_street_address String,
   customer_zip_code int,
   customer_city String,
   customer_state String
)
location '/ods/ods_customer1';
CREATE TABLE product1
(
   product_code int,
   product_name String,
   product_category String
)
location '/ods/ods_product1';
CREATE TABLE sales_order1
(
   order_number         int,
   customer_number      int,
   product_code         int,
   order_date           string,
   entry_date           string,
   order_amount         DECIMAL
)
location '/ods/ods_sales_order1';