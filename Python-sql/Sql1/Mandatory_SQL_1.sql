-- SQL – TAKE HOME LAB_EXERCISE – 01

-- USE HR SCHEMA:
-- 1.	Write a query to display all the locations (id, city) which do not have any state province mentioned.
-- NOTE: LOCATION TABLE]
-- ANSWER:

use hr;
select location_id,city,state_province from locations where state_province is NULL;

-- 2.	Write a query to display job_id,job titles,min_salary,max_salary whose maximum salary is  greater than 10000 . NOTE : JOBS TABLE]
use hr;
select job_id,job_title,min_salary,max_salary from jobs where max_salary > 10000;

-- 3.Write a query to display department_id,department_name,  Manager_id whose manager_id is greater than  200 and   location_id is 2400. [NOTE : DEPARTMENTS TABLE]
--   ANSWER:
use hr;
select  department_id,department_name,manager_id from departments where manager_id > 200;

-- 4.Write a query to display the job title whose minimum   salary is greater than 8000 and max salary less than 20000   .[NOTE : JOBS TABLE]
-- ANSWER:
use hr;
select job_title from jobs where min_salary > 8000 AND max_salary < 20000;


-- 5.	Write a query to retrieve all the records of departments with manager_id is not null for the location id 1700. 
-- [NOTE : DEPARTMENTS TABLE]
-- ANSWER:
use hr;
select * from departments where manager_id is NOT NULL AND location_id = 1700;



-- USE Orders SCHEMA:


-- 6.	Write a query to Display the PRODUCT_ID ,PRODUCT_DESC, PRODUCT_CLASS_CODE,PRODUCT_PRICE where the product category is any of 2050, 2053 or 2055.
-- [NOTE : PRODUCT TABLE]

-- ANSWER:
use ord_mgmt;
select PRODUCT_ID,PRODUCT_DESC,PROD_CAT_ID from product where PROD_CAT_ID = 2050 OR PROD_CAT_ID = 2053 OR PROD_CAT_ID = 2055;

-- 7.	Write a query to display the Customer_id,order id, order_date and orders shipment date where ORDER_STATUS='shipped'   in an ascending order of customer ids and descending order of order dates.
-- [NOTE:order header table]

-- ANSWER:
use ord_mgmt;
select CUSTOMER_ID,ORDER_ID,ORDER_DATE,SHIPMENT_DATE from order_header where ORDER_STATUS = 'SHIPPED' order by CUSTOMER_ID,ORDER_DATE desc;


-- 8.	Write a query to List the details of products with class code 2050 where price is in the range of 5000 and 30000 and available quantity is more than 15.
-- Write a query to List the details of product_cat_id 2055 where price is in the range of 5000 and 30000 and available quantity is more than 15.
 -- [NOTE: PRODUCT TABLE]
-- ANSWER:
use ord_mgmt;
select * from product where PROD_CAT_ID = 2055 AND QTY_IN_STOCK > 15 AND (PRODUCT_PRICE BETWEEN 5000 AND 30000); 

-- 9.	Write a query to display all the records of order details which are not yet to be shipped.
-- [NOTE:ORDER_HEADER TABLE]
-- ANSWER:
   use ord_mgmt;
   select * from order_header where ORDER_STATUS ="In Process";

-- 10.	Write a query to display all the records of order    details which are  shipped and payment_mode either ‘credit card’ or ‘net banking’ and payment_date greater than ‘2013-01-01’.)[NOTE : ORDER_HEADER TABLE]
-- ANSWER:
   use ord_mgmt;
   select * from order_header where ORDER_STATUS ="Shipped" AND (PAYMENT_MODE = "Credit Card" OR PAYMENT_MODE = "Net Banking") AND PAYMENT_DATE > '2013-01-01' ;