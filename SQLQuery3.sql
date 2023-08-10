select * from dbo.customers
insert into dbo.customers (customerid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
values ('tom', 'dell', 'john', '1516', '1617 N st', 'arlington', 'mng', '22209', 'usa', '7035556068', 'null')

select * from dbo.customers
where address = '1617 N st'

Select * From dbo.customers
Where contacttitle = '1516'

--------------DELETE COMMAND

SELECT * FROM DBO.CUSTOMERS
DELETE FROM DBO.CUSTOMERS WHERE CUSTOMERID='1122U'

SELECT * FROM DBO.CUSTOMERS
DELETE FROM DBO.CUSTOMERS WHERE CUSTOMERID='1515'

----- Doorhi 4 uildel  CRUD OPERATIONS ( medej bx chuhal hun byr uur uur erhtei)
 ---- CREATE (INSERT)
 ---- READ (SELECT)
 ---- UPDTAE
 ---- DELETE

 ---- INSERT - CRUD OPERATION
 select * from dbo.customers

 insert into dbo.customers (customerid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
 values ('01148', 'GG', 'Naraa', 'account', '1615 18th', 'Arlington', 'Mng', '22209', 'USA', '7033977628', NULL)
  --- (haragdahgyi bol table deeree baruun mouse aa daraad refresh hiih)

 select * from dbo.customers   ---(haana bgaagaa conditiontai adilhan haigaad olno)
 where customerid = '01148'

 select * from dbo.customers
 where customerid = '01148'

 select * from dbo.customers
 update dbo.customers set fax = '21319' where customerid = '01148'

 ---- company -- Dell contact name -- Naraa baisniig
 --- company ner = 'GG' BOLGOH

 select * from dbo.customers
 update dbo.customers set COMPANYNAME = 'GG' WHERE CONTACTNAME = 'NARAA' AND CUSTOMERID = '01148'

  update dbo.customers set COMPANYNAME = 'GG', ADDRESS = 'TEST SQL UPDATE' WHERE CONTACTNAME = 'NARAA'

  SELECT * FROM DBO.CUSTOMERS


 ---- DELETE - CRUD OPERATION
 ---  umnuh udur orulsan customerid = '0114' iig ustagaya.
 ---- TABLET NERIIN ard PK gsn bval primary key gsn ug uchir unique name ( CustomerID (PK, nchar(5), not null) - dbo.customers table iin customerid 

 DELETE FROM DBO.CUSTOMERS
 WHERE CUSTOMERID = 'BCBGF' AND COMPANYNAME = 'AMAZON'

 delete from dbo.customers
 where customerid = '0114' and companyname = 'dell'


 ---- LESSON 4 AUGUST 1.2023
---- SQL TOP, LIMIT, FETCH(oracle deer heregledeg) FIRST OR ROMNUM CLAUSE. (oracle deer fetch iig ashiglana, sql deer LIMIT, TOP iig heregledeg)

SELECT * FROM DBO.COVID_DATA_TEAM_DC
----- Deerhi shig songovol het ih data tul program gatsna.
--- tegeheer doorh shig limit tavi TOP 10 geh met.
SELECT TOP 10 * FROM  DBO.Covid_Data_Team_DC

select top 1 percent * from dbo.Customers;
select top 10 percent * from dbo.customers;

select * from dbo.Covid_Data_Team_DC limit 5

SQL MIN () MAX () Functions
  
---- exp: unetei baraag oloh hyamdiig ni oloh geed hereglene.

Select min (list_price) from sales.order_items
---- hamgiin baga unete baraag sales order items aas oloh

Select max (list_price) from sales.order_items;
select max(list_price), min (list_price) from sales.order_items;
select avg (list_price) from sales.order_items;
select max (discount) from sales.order_items
select min (discount) from sales.order_items
select avg (discount) from sales.order_items
--- SELECT GENERATE HIISEN BOLOHOOR nO COLUMN NAME GEJ GARSAN. SO NER OMOOJ SURYA   ( SELECT MAX (DISCOUNT) AS MAXIMIUM UNE NI) 
select max (discount) AS HAMGIIN_IH from sales.order_items
select min (discount) AS HAMGIIN_BAGA from sales.order_items
select avg (discount)  AS AVERAGE from sales.order_items

SELECT 
max (discount)
min (discount) 
avg (discount) from sales.order_items;


--- SQL COUNT(), AVG(), AND SUM() FUNCTIONS

SELECT * FROM SALES.ORDER_ITEMS;
SELECT COUNT(*) FROM SALES.ORDER_ITEMS
-----SELECT COUNT (*) AS NI_20_HUWIIN_HYAMDRALTAI HED BNA 
SELECT COUNT(*) FROM SALES.ORDER_ITEMS WHERE DISCOUNT = 0.20
SELECT COUNT(*) FROM SALES.ORDER_ITEMS WHERE DISCOUNT = 0.10;
SELECT COUNT(*) FROM DBO.covid_data_green_st

SELECT SUM (LIST_PRICE) FROM SALES.ORDER_ITEMS
SELECT * FROM SALES.ORDER_ITEMS
SELECT SUM (LIST_PRICE*QUANTITY) FROM SALES.ORDER_ITEMS
SELECT SUM ((LIST_PRICE*(1-DISCOUNT))*QUANTITY) FROM SALES.ORDER_ITEMS

---- LESSON 2 HICHEEL GUITSEEYE.
---- SQL LIKE OPERATORS 

SELECT * FROM PRODUCTION.CUSTOMERS
SELECT * FROM PRODUCTION.CUSTOMERS WHERE FIRST_NAME LIKE 'A%' -- 118
---- GANTS A BXAD BOLNO.ZUVHUN GANTS A NEG USEGTEI NER BJ BOLNO.
SELECT * FROM PRODUCTION.CUSTOMERS WHERE FIRST_NAME LIKE '%A' -- 534
SELECT * FROM PRODUCTION.CUSTOMERS WHERE FIRST_NAME LIKE '%OR%' -- 81
SELECT * FROM PRODUCTION.CUSTOMERS WHERE FIRST_NAME LIKE '_R%' -- 86
SELECT * FROM PRODUCTION.CUSTOMERS WHERE FIRST_NAME LIKE 'A_%'  -- 118
----- AT LEAST 2 USEG BX YOSTOI. 
---- % gsn temdegeer yu ch bj bolno yamar ch useg bj bolno.

--- ORDER BY OPERATIONS -  BUH QUERY NIII HAMGIIN SUULD ORDER BY BICHNE ( WHERE ..., )
---- 
SELECT *FROM SALES.ORDER_ITEMS
ORDER BY LIST_PRICE ASC
--- BAGA NI DEEREE GARSAN BNA PRICE (

SELECT *FROM SALES.ORDER_ITEMS
ORDER BY LIST_PRICE DESC
--- PRICE DEER NI GARNA. IH UNEESEE EHELJ GARNA
SELECT *FROM SALES.ORDER_ITEMS
WHERE LIST_PRICE <> 11999.99
ORDER BY LIST_PRICE 
---- 11999.99 OROHGYI GEER LIST GARGAJ BNA .

SELECT * FROM PRODUCTION.CUSTOMERS
ORDER BY FIRST_NAME DESC 
--- Z EES EHLEED GARJ BNA .9 USEGNII ARD YAMAR NEGEN TOO BDAG. ( A-65 BLAA GEHED Z 127 GEH MET TOO BDAG UCHIR INGEJ GARNA)

---- ASC, DESC GEJ BICHEEGYI BOL DIFUALT OOR BAGAASAA GARDAG.

---- insert your relatives all info into dbo.customers
SELECT * FROM DBO.Customers 
INSERT INTO DBO.Customers (customerId, compaNyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax) --- TUMURUU
valuEs ( '1029', 'UNI', 'TUMURSUKH', '1517', '1617 18TH', 'Arlington', 'MNG', '22209', 'USA', '2039700719', NULL )

select * from dbo.customers
 update dbo.customers set CONTACTNAME = 'TUMURUU' WHERE COMPANYNAME = 'UNI' AND CUSTOMERID = '1029'


SELECT * FROM DBO.CUSTOMERS
WHERE CUSTOMERID = '1029'

SELECT * FROM DBO.CUSTOMERS
INSERT INTO DBO.CUSTOMERS (customerId, compaNyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)--- GALA
VALUES ( '0121', 'TDB', 'GALA', '0214', 'KHAN-UUL', 'UB', 'MNG', '976', 'MNG', '7039911295', NULL)

SELECT * FROM DBO.CUSTOMERS
WHERE CUSTOMERID = '0121'

 --- SHOW ME THE 5 HIGHEST PRICED ITEMS FROM FROM SALES.ORDER_ITEMS - 2 WAYS
 SELECT DISTINCT TOP 5 LIST_PRICE, ITEM_ID FROM SALES.ORDER_ITEMS --- EHNII ARGA 9 2 DOH ARGIIG NI SUB QUERY UZEJ BGAAD BOLIYO)
 ORDER BY LIST_PRICE DESC

 SELECT MAX(LIST_PRICE) FROM SALES.ORDER_ITEMS
 WHERE LIST_PRICE < (SELECT MAX (LIST_PRICE) AS MAX_A FROM SALES.ORDER_ITEMS) --- SUB QUERY 

 SELECT DISTINCT LIST_PRICE FROM PRODUCTION.PRODUCTS ORDER BY LIST_PRICE DESC
 SELECT * FROM PRODUCTION.PRODUCTS WHERE PRODUCT_ID=2


 ---- show me all the discounted records which are less than 0.7% from Sales.order_items
 SELECT * from sales.order_items
 where discount < 0.7 

 select * from sales.order_items







 



