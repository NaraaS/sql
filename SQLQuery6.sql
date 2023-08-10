/* 
SUB QUERY */
SELECT * FROM SALES.ORDER_ITEMS   --- MODEL_ID BXGYI (jishee bolgoj avj bna)
SELECT * FROM PRODUCTION.PRODUCTS ---- END PRODUCT_ID BXGYI (jishee bolgoj avj bna)

SELECT * FROM SALES.ORDER_ITEMS  --- GOL QUERY GETEL END PRODUCT OGNOO BXGYI TUL UUR TABLE 
 --- example 1
SELECT * FROM SALES.ORDER_ITEMS where product_id in  
(
  SELECT product_id FROM PRODUCTION.PRODUCTS WHERE MODEL_YEAR=2016  
  )     -----  2324 rows ( model 2016 ni 2324 zaragdsan product_id)

---- uur examaple 2
select * from dbo.employee  --- 2 doh tsaling olyo
select * from dbo.employee order by salary desc  --- 88000 bna.
 select top 2 salary  from dbo.employee order by salary desc

 select max(salary)  from dbo.employee --- ih tsalingoo bichne

 ---- Bagshiiin bichsneer doorh
 select top 1 salary from dbo.employee  --- ( ene query ni max aa olloo query ni main ehlej unshigddag) tegeed where ... < ( sub query)
 where salary < (select max(salary)  from dbo.employee) order by salary desc   
 ---- 2 doh hamgiin ih tsaing olohod bichsen SUB QUERy.

 select * from dbo.employees_subq
 select * from dbo.departments_subq

 select * from dbo.employees_subq
 where department_id = 
 (
 select department_id from dbo.departments_subq where department_name = 'HR'
 )

  select * from dbo.employees_subq
  where employee_name = 'Carol'
   select * from dbo.departments_subq where department_id = '3'

   ----- Carol iiin ajildag Department_name ol. ( minii bichsen) - buruu
   select * from dbo.employees_subq where department_name = 
   ( select department_name  from dbo.departments_subq where department_id = 'Carol')  

   ---- door bagsh bichiv.
   select department_name from dbo.departments_subq where department_id =
   (select department_id from dbo.employees_subq where employee_name = 'Carol')   --- Carol ni sales departmented ajilladag

 
 ---- show me the employee name who is salary greater than Bob 
 select * from dbo.employees_subq
 select * from dbo.departments_subq

  select * from dbo.employees_subq where employee_name = 'Bob' 
  (

  select employee_name from dbo.employees_subq where salary >
  ( select salary from dbo.employees_subq where employee_name = 'Bob')  --- Henry

  --- find employee who work in the same department as Alica
 select * from dbo.employees_subq
 select * from dbo.departments_subq

 select employee_name from dbo.employees_subq where department_id = 
 ( select department_id from dbo.employees_subq where employee_name = 'Alice')   --- Alice and David 2 ajilladag.

  --- find employee whose department name containing ' sales'
  select * from dbo.employees_subq
 select * from dbo.departments_subq

 select employee_name from dbo.employees_subq where department_id =
 ( select department_id from dbo.departments_subq where department_name = 'sales') --- Grace  ---- Just neg hun olj bgaa bolohoor ehnii query iin 
                                                                                         --- where iin ard = bichsen.

 --- How to get find only orders who lives in lives CA and Zip code 95008.
 select * from sales.orders
 select * from sales.customers

 select * from sales.orders where customer_id in 
 ( select customer_id from sales.customers where state = 'CA' and zip_code = '95008' ) --- 13 rows ---- olon bgaa tul IN ashiglah heregtei.

 --- how to get product name that stock less than 10 pieces ( manaid bgaa udahgyi duusah baraanii ner iig gargaad ir gsn ug)
  select * from production.products
  select * from production.stocks

  select product_name from production.products where product_id in
  ( select product_id from production.stocks where quantity < 10 )  ---  221 rows buyu 221 turliin baraa bna.

  select max (list_price) as max_price, min (list_price) as min_price, avg (list_price) as avg_price from production.products where product_id in
  ( select product_id from production.stocks where quantity < 10 )  

   select product_name, list_price from production.products where product_id in
  ( select product_id from production.stocks where quantity < 10 ) order by list_price desc  --- product name bolon ih uneer ni gargalaa.


  
  ---- Home work - 5 lesson 7

 select * from production.products
 select * from production.stocks 

 ---- Please provide me TOP 10 stocked products name.

 select product_name from production.products where product_id in
 (select top 10 product_id from production.stocks order by quantity desc )    --- top 10 stocked products name. ( er ni dotor talaasaa oloh
    ----- utgaasaa huuj bichij ehelvel zugeer) (daraa too urchlugduh yed automat aar gargah tul order by eer bichne. )

  ---- Please provide me product names that is out of stock.
 select product_name from production.products where product_id in
 ( select product_id from production.stocks where quantity = 0 )   --- 25 products out of stock.

 
   

   
