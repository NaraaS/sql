SELECT * FROM SALES.ORDER_ITEMS
WHERE LIST_PRICE <= 599.99

SELECT * FROM SALES.ORDER_ITEMS
WHERE LIST_PRICE <> 429
 ---- ene yed 429 uuruu orohgyi yed 
 
 SELECT * FROM SALES.ORDER_ITEMS
 WHERE DISCOUNT <> 0.2
 ---- 20 huviin saletei baraa oroogyi too

 SELECT * FROM SALES.ORDER_ITEMS
 WHERE DISCOUNT BETWEEN 0.1 AND 0.2
  ---- 10 aas bolon 20 hurtel huvitai baraanuud hed bna 

 SELECT * FROM SALES.ORDER_ITEMS
 WHERE DISCOUNT <= 0.2 AND DISCOUNT >= 0.1
  --- 10aas 20iin hoorond huvitai baraanuud her bna 
 SELECT * FROM SALES.ORDER_ITEMS
 WHERE LIST_PRICE < 1000 AND LIST_PRICE > 500
 --- symbol ashiglaval deerh bna.

 SELECT * FROM SALES.ORDER_ITEMS
 WHERE LIST_PRICE between  500 AND 1000
 ---- between tei bichuul deerh shig 

  --- 500 aas ih bolon 1000 aas baga unetei baraa nii too
  SELECT * FROM SALES.ORDER_ITEMS 
  WHERE  LIST_PRICE <= 1000 AND LIST_PRICE > = 500
  --- = always baruun taldaa bna ( ene ni 500, 1000 uud orood hed bna gsn uzuulne)
 
 SELECT * FROM SALES.CUSTOMERS
 WHERE FIRST_NAME LIKE 'KA%'
  ---- KA nertei humuus hed bna 

  SELECT * FROM SALES.CUSTOMERS
  WHERE FIRST_NAME LIKE 'KA___'
  ---  KA ... gesen 5 usegtei ner

  SELECT * FROM SALES.CUSTOMERS
  WHERE first_name LIKE 'KA%A'
  --- KA ehlees A aar duussan

  SELECT * FROM SALES.CUSTOMERS
  WHERE first_name LIKE '%RA'
  ---- RA - aar tugssun ner oloh doo umnu ni % tavina

  SELECT * FROM SALES.ORDERS
  WHERE CUSTOMER_ID IN (259, 1212, 523)
  --- hereglegch dund 259, 1212, 523 gsn id tai hereglecg heden hudaldan avalt hiisen bna 


  ---- CONDITION ( OPERATORS)
  =  --- equal
  > --- greater tahn
  < --- less than
  >=  --- greater than or equal
  <= --- greater than or equal
  <> --- not equal Note: in some versions of SQl this operators may be written as !=
  between  --- between a certian range
  like --- search for a pattern
  in --- to specify multiple possible values for a column
      ---- WHERE CUSTOMERS_ID IN (..., ..., ...)

 ---- SQL AND, OR AND NOT OPERATORS ----
 --- AND
 SELECT *FROM SALES.CUSTOMERS
 WHERE STATE ='NY' AND ZIP_CODE ='14127'

 ---OR
 SELECT * FROM SALES.CUSTOMERS
 WHERE STATE ='NY' OR ZIP_CODE ='14127'
 SELECT * FROM SALES.CUSTOMERS
 WHERE STATE ='NY' OR first_name LIKE 'KA%'
 SELECT *FROM SALES.ORDER_ITEMS
 WHERE DISCOUNT =0.2 OR DISCOUNT = 0.07
SELECT * FROM SALES.ORDER_ITEMS
WHERE DISCOUNT IN ( 0.20,0.07, 0.05 )
 --- OR iig bas IN eer bichij bolno.

 --- NOT - iig NULL bolon LIKE deer hereglej bolno
 SELECT * FROM SALEs.CUSTOMERs
 WHERE PHONE IS NOT NULL
 --- NULL - yum bxgyi ch hamt gargana ( UGUISGESEN HELBER DEER ASHIGLANA)
 SELECT * FROM DBO.CUSTOMERS
 WHERE CONTACTNAME =' '
 --- EMPTY (computer memory zai ezelsen)
 SELECT * FROM DBO.CUSTOMERS 
 WHERE FAX IS NOT NULL
 --- FAX AA UGUUGYI NI OLOH 
 SELECT * FROM DBO.CUSTOMERS 
 WHERE FAX IS NULL
 --- FAX AA UGSUN HUMUUS
 SELECT *FROM DBO.CUSTOMERS
 WHERE CONTACTNAME NOT LIKE 'A%'
 ---- NER NI A AAR EHLEEGYI 

 select * from sales.order_items
 where discount= 0.05 and list_price= 599.99
 --- AND, OR hereglehdee conditions oo zuv bichih heregtei. ( condition ni discount and list price)



 --- INSERT COMMAND ---- TABLE DEEREE MEDEELEL NEMNE ( DML -D HAMAARAGDDAG)
 --- bichihdee: INSERT INTO table name (COLUMN1, COLUMN2 ...) VALUES (VALUES1, VALUES2, VALUES3 ...)

---- uuriiguu nemev table tad.
SELECT * FROM DBO.CUSTOMERS 
INSERT INTO DBO.CUSTOMERS (CUSTOMERID, COMPANYNAME, CONTACTNAME, CONTACTTITLE, ADDRESS, CITY, REGION, POSTALCODE, COUNTRY, PHONE, FAX)
VALUES ('NARAA', 'UNION', 'BILL NARAA', 'ACCOUNT', '11 FAIRFAX BLVD', 'FAIRFAX', 'VA', '22030', 'USA', '7033977628', 'NULL') 

Select * From dbo.customers 
Insert into dbo.customers (CustomerId, Companyname, Contactname, ContactTitle, Address, City, Region, Postalcode, Country,Phone, Fax)
Values ('Meg', 'JohnHopkins', 'MM', 'Dr', 'New haven 1212', 'New haven', 'US', '60915', 'USA', '2030008989', NULL)

Select * From dbo.customers 
Where CompanyName like 'JohnHopkins'

Select * From dbo.customers 
Update dbo.customers Set ContactName = 'MM' Where CompanyName = 'Yale Hos' 

Select * From dbo.customers 
Where ContactName = 'MM'

--- uuriiguu olov.
SELECT * FROM DBO.CUSTOMERS 
WHERE contactname LIKE 'gg' 

select * from dbo.customers
insert into dbo.customers (customerid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
values ('tom', 'dell', 'john', '1516', '1617 N st', 'arlington', 'mng', '22209', 'usa', '7035556068', 'null')

select * from dbo.customers
where companyname like 'dell'

--- UPDATE WARNING!
---  BE CAREFULL WHEN UPDATING RECORDS. IF YOU OMIT THE wHERE CLAUSE, ALL RECORDS WILL BE UPDATED! ( UPDATE IIG HIIHDEE WHERE IIG NI 
---- SONGOHGYI BOL BUH MEDEELEL TER CHIGTEE UURCHLIGDUNU. TEGEHEER ZAVAAL UNIQUE CODE NI ASHIGLANA)

SELECT * FROM DBO.CUSTOMERS ---135
UPDATE DBO.CUSTOMERS SET CONTACTNAME ='UYANGAA' WHERE CUSTOMERID ='1122U'

SELECT * FROM DBO.CUSTOMERS
UPDATE DBO.CUSTOMERS SET CITY ='WASHINGTON' WHERE CUSTOMERID ='TOM'
 ---- SET IINHEE DARAA SOLIH CONDITION OO BICHNE, TEGEEED WHERE ... UNIQ ID ORUULJ UGNU. ( IF NOT UNIQ BVAL ZUNDUU JOHN BGAA TUL TEDG UURCHLUGDUNU)
SELECT *FROM DBO.CUSTOMERS
WHERE CONTACTNAME LIKE 'JOHN'





 

