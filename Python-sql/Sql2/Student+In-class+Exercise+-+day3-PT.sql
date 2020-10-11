# Pre-Requisites:
# Step 1 : Create table as below.
/*Product string size 15 ,
Quantity integer ,
Price real,
purchase_cost decimal with size 6,2,
Estimated_sale_price float,
Month integer*/
Create table Bank_Inventory_pricing
(
pmttype   varchar(15),
qty   Int,
price real ,
purchase_cost  decimal(6,2),
estimated_sale_price float,      
month  Int
);
  
# Step2: 
# Insert records for above 
Insert into Bank_Inventory_pricing values ( 'PayCard'   , 2 , 300.45, 8000.87, 9000.56, 1 ) ;
Insert into Bank_Inventory_pricing values ( 'PayCard'   , 2 , 800.45, 5000.80, 8700.56, 1 ) ;
Insert into Bank_Inventory_pricing values ( 'PayCard'   , 2 , 500.45, 6000.47, 7400.56, 1 ) ;
Insert into Bank_Inventory_pricing values ( 'PayPoints' , 4 , 390.87, 7000.67, 6700.56, 2)  ;
Insert into Bank_Inventory_pricing values ( 'SmartPay' , 5  , 290.69, 5600.77, 3200.12 , 1)  ;
Insert into Bank_Inventory_pricing values ( 'MaxGain',    3 , NULL, 4600.67, 3233.11 , 1 ) ;
Insert into Bank_Inventory_pricing values ( 'MaxGain',    6 , 220.39, 4690.67, NULL , 2 ) ;
Insert into Bank_Inventory_pricing values ( 'SuperSave', 7 , 290.30, NULL, 3200.13 ,1 ) ;
Insert into Bank_Inventory_pricing values ( 'SuperSave', 6 , 560.30, NULL, 4200.13 ,1 ) ;
Insert into Bank_Inventory_pricing values ( 'SuperSave', 6 , NULL, 2600.77, 3200.13 ,2 ) ;
Insert into Bank_Inventory_pricing values ( 'SuperSave', 9 , NULL, 5400.71, 9200.13 ,3 ) ;
Insert into Bank_Inventory_pricing values ( 'SmartSav',   3 , 250.89, 5900.97, NULL ,1 ) ;
Insert into Bank_Inventory_pricing values ( 'SmartSav',   3 , 250.89, 5900.97, 8999.34 ,1 ) ;
Insert into Bank_Inventory_pricing values ( 'SmartSav',   3 , 250.89, NULL , 5610.82 , 2 ) ;
Insert into Bank_Inventory_pricing values ( 'EasyCash',   3 , 250.89, NULL, 5610.82 ,1 ) ;
Insert into Bank_Inventory_pricing values ( 'EasyCash',   3 , 250.89, NULL, 5610.82 , 2 ) ;
Insert into Bank_Inventory_pricing values ( 'EasyCash',   3 , 250.89, NULL, 5610.82 , 3 ) ;
Insert into Bank_Inventory_pricing values ( "BusiCard"  ,  1, 3000.99 , NULL, 3500, 3) ; 
Insert into Bank_Inventory_pricing values ( "BusiCard"  ,  1, 4000.99 , NULL, 3500, 2) ; 

# Create table
Create table Bank_branch_PL
(Branch   varchar(15),
  Banker   Int,
  Product varchar(15) ,
  Cost  Int,
  revenue Int,
  Estimated_profit Int,   
  month  Int);
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'SuperSave', 30060070, 50060070,  20050070, 1 ) ;
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'SmartSav',   45060070, 57060070, 30050070, 2) ;
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'EasyCash',   66660070, 50090090, 10050077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 99101, 'SmartSav',   66660070, 79090090, 10050077, 3) ;
Insert into Bank_branch_PL values ( 'Banglr', 77301, 'EasyCash',   55560070, 61090090, 9950077, 3) ;
Insert into Bank_branch_PL values ( 'Banglr', 77301, 'SmartSav',   54460090, 53090080, 19950077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 77301, 'SmartSav',   53060090, 63090080, 29950077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'BusiCard',  	40030070, 60070080, 10050070,1) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'BusiCard',  	70030070, 60070080, 25060070,1) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'SmartSav', 	40054070, 60070080, 20050070, 2) ;
Insert into Bank_branch_PL values ( 'Banglr', 99101, 'SmartSav',   88660070, 79090090, 10050077, 3) ;


############################################ Questions ############################################
# Question 1 a):
-- Display average cost product wise from Bank_branch_pl
select count(Product),Product,avg(Cost) from Bank_branch_PL group by Product;

# Question 1 b): Print sum of Purchase_cost and average of estimated_sale_price of table
# Bank_inventory_pricing  during 2nd month . 
select sum(purchase_cost),avg(estimated_sale_price) from Bank_Inventory_pricing where month=2;
# Question 2:
# 2) Print average of estimated_sale_price with two decimals from bank_inventory_pricing table.
-- Hint Use format(avg(estimated_sale_price),3) 
select month,format(avg(estimated_sale_price),3) from Bank_Inventory_pricing group by month;

# Question 3:
# 3) Print the Products which are appearing in bank_inventory_pricing more than once during the month : 1

SELECT pmttype, COUNT(pmttype) as cc FROM Bank_Inventory_pricing where month=1 GROUP BY pmttype HAVING cc > 1;


# Question 4:
# 4) Print Products that are appearing more than once in bank_inventory_pricing and whose purchase_cost is
# greater than  estimated_sale_price , assuming estimated_sale_price is 0 when there is no value given

SELECT pmttype, COUNT(pmttype) as cc FROM Bank_Inventory_pricing where (IFNULL(purchase_cost,0) >  IFNULL(estimated_sale_price, 0)) GROUP BY pmttype HAVING cc > 1;

# Question 5:
# 5) Print the sum of  purchase_cost of Bank_Inventory_pricing table with default value of 2000/-
# if not updated with any value
SELECT sum(purchase_cost), COUNT(pmttype) as cc FROM Bank_Inventory_pricing where (purchase_cost >  IFNULL(estimated_sale_price, 0)) GROUP BY pmttype HAVING cc > 1;


# Question 6:
# 6) Print unique records of bank_inventory_pricing without displaying the month.
select distinct(pmttype) from Bank_Inventory_pricing ;
# Question 7:
# 7) print the average of Purchase_cost from the table Bank_inventory_pricing.If the purchase_cost is not updated  
#   then it’s value is equal to estimated_sale_price.
select AVG(IFNULL(purchase_cost,estimated_sale_price)) from Bank_inventory_pricing;
select AVG(IFNULL(purchase_cost,estimated_sale_price)) from Bank_inventory_pricing group by pmttype;
# Question 8:
# 8) Print the count of unique Products used in  Bank_inventory_pricing
SELECT COUNT(distinct(pmttype))  FROM Bank_Inventory_pricing;
# Question 9:
# 9) Print product and the difference of maximum and minimum purchase_cost of each product in Bank_Inventory_Pricing.
select pmttype,(max(purchase_cost)-min(purchase_cost)) from Bank_Inventory_pricing group by pmttype;

# Question 10:
# 10) Print the sum of Purchase_cost of Bank_inventory_pricing during 1st and 2nd month
select sum(Purchase_cost) from Bank_inventory_pricing where (month=1 OR month=2);
