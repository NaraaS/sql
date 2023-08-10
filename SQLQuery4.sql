 --- AUGUST 2nd .2023
--- DAVTAH HICHEEL
--- HW 2 iin tuhai:

--- Query 1 (distinct ashiglah)

select * from sales.order_items
where list_price > 599 and list_price < 700 and discount = 0.20

select * from sales.order_items
where list_price between 599 and 700 and discount = 0.20

select distinct list_price from sales.order_items
where list_price > 599 and list_price < 700 and discount = 0.2 

--- Query 2 
select * from production.customers
where email like '%yahoo.com' and state in ('NY', 'CA') and zip_code in ('14217', '11372') --- 8 rows 

select count (*) from production.customers
where email like '%yahoo.com' and state in ('NY', 'CA') and zip_code in ('14217', '11372') ---8 rows ( shuud COUNT ashiglaad)


---- NEW LESSON  - ORDER BY - olon bj boldog ( salary, employeeID ... geh met)

SELECT * From dbo.Employee
Order by salary, EmployeeID desc

SELECT * From dbo.Employee
Order by salary desc

Select * from dbo.customer_info  --- A aas ehlej bgaa ASC  ( DEFAULT ni ASC baidag) - ajil deer goltsuu neg nuhtsul l bdag.
Order by first_name asc

Select * from dbo.customer_info -- Z ees ehlej bgaa DESC
Order by first_name desc

Select * from dbo.customer_info -- A orohgyi gsn yed
where first_name not like 'a%'
Order by first_name asc

Select * from dbo.customer_info  -- ASC ni defualt ehneesee/ bagaasaa eheldeg tul bichihgyi bj bolno.
where last_name not like 'a%'
order by last_name
 ---- Order by hiihdee A - r ehelseng oruulaagyi.

Select * from dbo.customer_info
where last_name not like 'a%'
order by last_name desc

 --- Query gee note bolgoh /* query yavna tegeed tugsguld */ = /* */

 /*
 SELECT * From dbo.Employee
Order by salary, EmployeeID desc

SELECT * From dbo.Employee
Order by salary desc
 
     /*  */  -  ene 2 iin hoorond tailbar bichne
      "  - double quatotion
      ' - quatotion
     {} - curly bracket
     [] - bracket

 */

 ---- SQL ALIASES --- COLUMN OR TABLE DEER HEREGLEJ BOLNO.
 ---- ALIASES ni tuhain yedee l table uurchlunu. alert l buten uurchulnu ( DDL deer bgaa)
--- 

 SELECT * FROM [DBO].[ORDERS]
 SELECT EmployeeID AS AJILCHIN_DUGAAR FROM DBO.ORDERS

SELECT * FROM [DBO].[ORDERS]
 SELECT RequiredDate AS EXPECTED_DUE_DATE FROM DBO.ORDERS -- REQUIRED DATE column iig EXPECTED DUE DATE bolgoson. ( AS ashiglaad)

 SELECT RequiredDate AS EXPECTED_DUE_DATE, EmployeeID AS AJILCHIN_DUGAAR FROM DBO.ORDERS --- olon column uurchilj bolno ( comma ashiglaad l 
  ---- daraagiin uurchluh column aa oruulj ugnu)

  SELECT * FROM [DBO].[ORDERS]
  ---create full_name

select first_name + ' ' + last_name as full_name, * from dbo.customer_info

select * from dbo.customer_info
select street + ' ' + city + ' ' + state as full_address, * from dbo.customer_info ---- as ... ard , tavina.

select street + ' ' + city + ' ' + state as full_address, first_name + ' ' + last_name as full_name, * from dbo.customer_info 
  ---full_name, full_address iig hamt uurchluul , aar zalguulaal yavna.

  --- 
  select list_price+((list_price*0.15)) as sale_Price, * from sales.order_items 

  select ((list_price*(1-discount))+(list_price*(1-discount))*0.15) as sale_price, * from sales.order_items
  ---- une * (1- dis) + ( une * (une*(1-dis)*0.15) = borluulsan une.
 
 select (list_price * (1-discount)), * from sales.order_items  -- hungululttei une 1 step
 select (list_price * (1-discount)) + ((list_price * (1-discount)) * 0.15) as sale_price from sales.order_items -- sales 2 doh step

 --- DATA MANIPULATION FUNCTIONS
 ---- DATA g uurchluhud heregledeg funtion uud
 

 Select RTRIM (CONTACTNAME), lTRIM (CONTACTNAME), * FROM DBO.CUSTOMERS  
 --- JISHEE NI ' khAN UUL ' K IIN UMNU SPACE L IIN DARAA SPACE AVSAN BGAA SPACE IIG ARILGANA. 
  --- YAGAD GEVEL K AAR EHELSEN NERIIG OLOH GSN SPACE TERI TUL OLOHGYI. K% GEH MET.


  SELECT LOWER (CONTACTTITLE), UPPER(ADDRESS), * FROM DBO.CUSTOMERS -- UURCHLULT NI EHNII ROW UUDAD HARAGDAJ BNA.
  --- UPPER, LOWER
  ---- NEG FORMAT BOLGOH YED JIJIG TOM USEG HERGELESEN BGAA

  SELECT LOWER (CONTACTTITLE) AS SHINE_LOWER_CASE_CONT, LOWER(ADDRESS), * FROM DBO.CUSTOMERS -- contacttitle uud jijg useg bolood row table ner 
  -- ni shine_lower_case_cont bolson bna. ( ene zasvar uud tyr hereglej bgaa bolno tuhain yed l)


  --- LEFT , RIGHT FUNCTION ( jishee ni social iin suuliin 4 dugaaraa hel  geh met)
  --- uatsnii chin suuliin 4 dugaar haruulya.
   Select RIGHT(PHONE,4), * FROM DBO.CUSTOMERS - SUULIIN 4 GSN BOLOHOOR BARUUN TALIIN SUULIIN 4 DUGAAR GARJ IRSEN 7628)
   ---- SUULIINH GEVEL RIGHT TALAAS
   ---- EHNIIH GEVEL LEFT TALAAS NI

   SELECT LEFT(FIRST_NAME, 10), * FROM DBO.CUSTOMER_INFO   --- EHNII NERNII 4 USEG HARUUL

   SELECT RIGHT(EMAIL, 5), * FROM DBO.CUSTOMER_INFO  -- EMAIL IIN SUULIIN 5 USEG GARGAHAD.


   ----- HAMGIIN CHUHAL ---- LEN ---- USEGNIIH NI URTIIH OLOH HEREGTEI YED.  -- TABLE YYSGEH YED HEREGLENE ( VARCHAR, NVARCHAR GEH MET YED HEREGLENE.
   ---- USEG ORHIGDSON BX GEH MET

   SELECT LEN(FIRST_NAME), FIRST_NAME FROM DBO.CUSTOMER_INFO
   ORDER BY 1 DESC    ---- HAMGIIN URT NERTEI HUN 11 USEGTEI BNA. VARCHAR AA 20 GEH UGUH GET MET.

    SELECT LEN(LAST_NAME), FIRST_NAME FROM DBO.CUSTOMER_INFO  --- LAST NAME 11 USEGTEI BNA  URTADAA 
   ORDER BY 1 DESC    --- 1 GDG UCHIR NI EHNIIHIIG SONGOJ BNA GSN UG SELECTEESEE HOISH (FIRST_NAME) GDGIIG.

   SELECT LEN(LAST_NAME), FIRST_NAME FROM DBO.CUSTOMER_INFO  --- LAST NAME 3 USEGTEI BNA BOGINODOO
   ORDER BY 1 ASC   

   --- ASC bagaasaa, DESC iheesee gsn utgatai.
   SELECT LEN(PRODUCT_NAME), * FROM PRODUCTION.PRODUCTS  
   ORDER BY 1 ASC   --- ASCENT NI BAGAASAA 15 USEGTEI

    SELECT LEN(PRODUCT_NAME), * FROM PRODUCTION.PRODUCTS  
   ORDER BY 1 DESC   -- DESC NI HAMGIIN IH NI 53 USEGTEI.

    SELECT MAX(LEN(PRODUCT_NAME)) FROM PRODUCTION.PRODUCTS  --- MAX GSN UCHRAAS , BOLON * IIG BICHIH HEREGGYI.
    SELECT MIN(LEN(PRODUCT_NAME)) FROM PRODUCTION.PRODUCTS  --- MIN GSN UCHRAAS , BOLON * IIG BICHIH HEREGGYI.

	SELECT MAX(LEN(FIRST_NAME))  FROM DBO.CUSTOMER_INFO  -- FIRST NAME URTDAA HED BNA 
    SELECT MIN(LEN(FIRST_NAME)) FROM DBO.CUSTOMER_INFO -- FIRST_NAME BAGADAA HEDEN USEG BNA.

	SELECT * FROM DBO.CUSTOMER_INFO
	WHERE LEN(FIRST_NAME)=11  -- 11 USEGTEI NERTEI HUMUUS

	SELECT * FROM DBO.CUSTOMER_INFO
	WHERE LEN(FIRST_NAME)>=10  --- 10 OROOD 21 HUN BNA 

	SELECT * FROM DBO.CUSTOMER_INFO
	WHERE LEN(FIRST_NAME)>10  --  4 HUN BNA 10 AAS BAGA USEGTEI URTTAI NERTEI ( 10 OROOGYI 4)






