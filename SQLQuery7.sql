
--  AUGUST 09.2023
 --- SubQuery davtaya.

   --- Mireya how many sales 

 Select * From sales.staffs
 Select * from sales.orders

 Select count (order_id) from sales.orders where staff_id  =
 (
 select staff_id  from sales.staffs where first_name = 'Mireya' ) --- 164

  --- how many orders made Baldwin Bikes stores.
   select * from sales.stores
   select * from sales.orders

   select count (order_id) as Baldwin_Bikes_orders from sales.orders where store_id =
   (select store_id from sales.stores where store_name = 'Baldwin Bikes')  --- 1097 

    select order_id from sales.orders where store_id =
   (select store_id from sales.stores where store_name = 'Baldwin Bikes')  --- 1097  order hiisen. (ingeh yum bol excel deer info bichvel het urt tul umnu
                                                                                 --- query shig count hiisen deer)

select count (order_id) as Baldwin_Bikes_orders from sales.orders where store_id in
   (select store_id from sales.stores where store_name = 'Baldwin Bikes' or store_name = 'Rowlett Bikes' )  --- 1271 order hiisen.

   ---  LESSON 8 NEW LESSON  
   ---- GROUP BY , ORDER BY 

   select * from sales.orders

   --- how to know each stores total orders infroation.
   Select count (*), store_id from sales.orders GROUP BY store_id --- 3 store iin order 174, 350, 1097 orders bna tus tus
    Select count (*) as total_order, store_id from sales.orders GROUP BY store_id

select count (*), order_date from sales.orders group by order_date --- 725 group days

select count (*) as order_quantity, order_date from sales.orders group by order_date order by 1 desc --- order ni column iinh daraalal
                                                                                                        ---- aar ugsun bna. 

 --- customers table deer ajillaya.

 select * FROM SALES.CUSTOMERS

  --- how many customers for each city

  select count (*) as customers, city from sales.customers group by city   --- orchard park city ih customer tei bna.
  select count (*) as customers, city from sales.customers group by city order by 1 desc

    --- how many customers for each zip_code

select * FROM SALES.CUSTOMERS
select count (*), zip_code from sales.customers group by zip_code
select count (*) as customers, zip_code from sales.customers group by zip_code  --- 196 group bolj bna zip_code ooroo hereglegchiig angilval

	  --- how many female and male employee we have in dbo.employee table

	  select * from dbo.employee
	   --- 4F, 4M
	  select count (*), Gender from dbo.employee group by Gender
	   select count (*) as gender_count, Gender from dbo.employee group by Gender

 ---- HAVING orj irnee.

 SELECT * FROM SALES.ORDERS
  ---- WHERE NI TABLE RYYGEE HANDANA
  --- HAVIG NI GROUP BY RUUGAA HANDANA ( group ees gargasan medeelel deeree distriction (hyazgaarlana) hiine)

  Select Count(*) as total_orders_number, Store_id
  From sales.orders
  Group by Store_id
  Having Count(*)>200   --- having ni group lesen ugugduluusuu 200 aas ih order olson bna.

  select * from dbo.Customer_Info

  Select Count (*) as per_state, state from dbo.customer_info  --- state byrd bii ... customer bii.
  Group by state

  Select Count (*) as per_state, state from dbo.customer_info  --- NY state 1019 customer bna.
  Group by state
  Having Count(*) > 1000  

  Select SUM(salary), gender From dbo.employee   --- F and M humuusiig niit tsalingaar ni grouplevel.
  Group by Gender
    Select SUM(salary) as total_salary, gender From dbo.employee   --- F and M humuusiig niit tsalingaar ni grouplevel.
  Group by Gender

   Select SUM(salary) as total_salary, gender From dbo.employee   --- F and M humuusiig niit tsalingaar ni grouplevel.
where Gender = 'M'

Select SUM(salary), gender From dbo.employee   --- Group dotroos Meneger iig hassan bna . tsaling.
  where EmployeeID !=201
  Group by Gender   --- ene yalgsan yed Group suuld ni bichij Query zuv bolno.

  Select Count (*) as per_state, state from dbo.customer_info  --- state byrd bii ... customer bii.
  Group by state
Having Count(*) > 200   --- 200 ih customertei state NY, CA baina.

     select * from dbo.customer_info

select Count(*) as customers, city from dbo.customer_info
group by city
having Count(*) > 10   --- 28 rows ( 28 city bna 10 aas deesh hereglegchtei)


 ---- list of employees from each stateCode with total salaries greater than 50000 dbo.employee
 ---- (show a list of statecode with total salaries greater than 50000)
   select * from dbo.employee
 
   Select Sum(salary) as total_salary_each_state, StateCode from dbo.employee  --- total salary gsn tul Sum(salary) gsn bna.
   group by StateCode
   Having Sum(salary) > 5000    
   order by 1 desc

   ----- GOL GROUP BY HIIHDEE EHLEED GROUP HIIH UTGAA HARAAD YAG YUGAAR NI AGGREGATE HIIH UTGAA BAGANAA OLJ HARAH HEREGTEI ( AGGREGATE functions - SUM, 
                                                   --- COUNT, MAX, MIN, AVG GEH MET)

 --- show only records which have only more than equal to 5 orders day. --- 38 days

 select * from sales.orders

 select Count(*) as days, order_date from sales.orders
 group by order_date
 having count(*) >= 5
 order by order_date asc

 ---- calculate total salary for male employees in each state
 select * from dbo.employee

 select Sum(salary) as sum_salary_male, stateCode from dbo.employee
 where gender = 'M'
 group by StateCode
 having sum(salary) > 100000   --- olson group dotroosoo 100 000 aas ih salary taig ol ( Having aggregate ni group iinhee aggregate tai ijil bna)
 order by sum(salary) desc




