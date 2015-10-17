--------------------------------------------------------
--  File created - Wednesday-May-21-2008   
--  To run this file log in as:
--  Using SQL*Plus Prompt:
--  connect sys/password[@ServiceName] as sysdba
--  OR
--  Using System Prompt:
--  sqlplus sys/<password>[@ServiceName] as sysdba
--------------------------------------------------------

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  User Drop (if exists)  
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------
DROP USER Vaishali CASCADE;

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  Tablespace Drop (if exists)
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------
--DROP TABLESPACE OracleForProfessionals INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS;

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  Tablespace Creation  
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------
--CREATE TABLESPACE OracleForProfessionals
--DATAFILE 'MyBooks_OracleForProfessionals.dat'
--SIZE 50M
--AUTOEXTEND on
--NEXT 10M
--MAXSIZE 1000M
--ONLINE;

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  User Creation  
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------
CREATE USER Vaishali
PROFILE DEFAULT
IDENTIFIED BY vaishali
DEFAULT TABLESPACE OracleForProfessionals
TEMPORARY TABLESPACE TEMP
ACCOUNT UNLOCK;

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  Grant Roles
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------
GRANT CONNECT TO Vaishali WITH ADMIN OPTION;
GRANT DBA TO Vaishali WITH ADMIN OPTION;

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  connect as the user Vaishali
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------
connect Vaishali/vaishali

----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  TABLE CREATION STATEMENTS  
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------

--------------------------------------------------------
--  DDL for Table CARTPRODUCTS
--------------------------------------------------------
CREATE GLOBAL TEMPORARY TABLE "CARTPRODUCTS" 
("CUSTOMERNO" NUMBER(10,0), 
"PRODUCTNAME" VARCHAR2(25), 
"DISCOUNT" NUMBER(10,0), 
"QTY" NUMBER(10,0), 
"PRICE" NUMBER(10,0)) ON COMMIT DELETE ROWS;

--------------------------------------------------------
--  DDL for Table DBAUDITTRAIL
--------------------------------------------------------
CREATE TABLE "DBAUDITTRAIL" 
("OPERATOR" VARCHAR2(25), 
"SHUTDOWNDATE" DATE);
   
--------------------------------------------------------
--  DDL for Table DDLAUDITTRAIL
--------------------------------------------------------
CREATE TABLE "DDLAUDITTRAIL" 
("EVENTNAME" VARCHAR2(25), 
"OBJECTOWNER" VARCHAR2(25), 
"OBJECTNAME" VARCHAR2(25), 
"OBJECTTYPE" VARCHAR2(25), 
"OPERATOR" VARCHAR2(25), 
"OPERATIONDATE" DATE);
  
--------------------------------------------------------
--  DDL for Table RANDOMNUMBERS
--------------------------------------------------------
CREATE TABLE "RANDOMNUMBERS" 
("RANDNO" NUMBER(10,0));

--------------------------------------------------------
--  DDL for Table TRIGONOMETRY
--------------------------------------------------------
CREATE TABLE "TRIGONOMETRY" 
("TRIGONO" NUMBER);

--------------------------------------------------------
--  DDL for Table PKEYS
--------------------------------------------------------
CREATE TABLE "PKEYS" 
("TABLENAME" VARCHAR2(50), 
"NEXTVALUE" VARCHAR2(10));

--------------------------------------------------------
--  DDL for Table SUBSCRIBERMASTER
--------------------------------------------------------
CREATE TABLE "SUBSCRIBERMASTER" 
("ACCOUNTNO" NUMBER(10,0) NOT NULL ENABLE, 
"FIRSTNAME" VARCHAR2(25) NOT NULL ENABLE, 
"LASTNAME" VARCHAR2(25) NOT NULL ENABLE, 
"BUILDINGNAME" VARCHAR2(25), 
"ROAD" VARCHAR2(25), 
"AREA" VARCHAR2(25), 
"CITY" VARCHAR2(25), 
"PINCODE" NUMBER(10,0), 
"COUNTRY" VARCHAR2(25) DEFAULT 'India' NOT NULL ENABLE, 
"CONTACTNO" NUMBER(15,0) NOT NULL ENABLE, 
"STATUS" CHAR(1) DEFAULT 'A' NOT NULL ENABLE,  
CONSTRAINT "SUBSCRIBERMASTER_PK" PRIMARY KEY ("ACCOUNTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table DISCONNECTEDSUBSCRIBERS
--------------------------------------------------------
CREATE TABLE "DISCONNECTEDSUBSCRIBERS" 
("ACCOUNTNO" NUMBER(10,0) NOT NULL ENABLE, 
"DISCONNECTED" VARCHAR2(15) NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Table FAMILYMEMBERS
--------------------------------------------------------
CREATE TABLE "FAMILYMEMBERS" 
("MEMBERNO" NUMBER(10,0) NOT NULL ENABLE, 
"FIRSTNAME" VARCHAR2(25), 
"LASTNAME" VARCHAR2(25), 
"PARENTNO" NUMBER(10,0),  
CONSTRAINT "FAMILYMEMBERS_PK" PRIMARY KEY ("MEMBERNO") ENABLE,  
CONSTRAINT "FAMILYMEMBERS_FAMILYMEMBE_FK1" FOREIGN KEY ("PARENTNO") REFERENCES "FAMILYMEMBERS" ("MEMBERNO") ENABLE);

--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------
CREATE TABLE "STUDENTS" 
("STUDENTNO" VARCHAR2(20) NOT NULL ENABLE, 
"STUDENTNAME" VARCHAR2(25), 
"AGE" NUMBER(2,0),  
CONSTRAINT "STUDENTS_PK" PRIMARY KEY ("STUDENTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table STUDENTMARKS
--------------------------------------------------------
CREATE TABLE "STUDENTMARKS" 
("STUDENTNO" VARCHAR2(20), 
"SEMESTER" VARCHAR2(25), 
"SUBJECT" VARCHAR2(25), 
"MARKS" NUMBER);

--------------------------------------------------------
--  DDL for Table STUDENTATTENDANCE
--------------------------------------------------------
CREATE TABLE "STUDENTATTENDANCE" 
("STUDENTNO" VARCHAR2(20), 
"ATTENDANCE" VARCHAR2(25));

--------------------------------------------------------
--  DDL for Table KNOWLEDGEBASE
--------------------------------------------------------
CREATE TABLE "KNOWLEDGEBASE" 
("URL" VARCHAR2(4000));

--------------------------------------------------------
--  DDL for Table PATIENTSA
--------------------------------------------------------
CREATE TABLE "PATIENTSA" 
("PATIENTNO" NUMBER(10,0), 
"PATIENTNAME" VARCHAR2(50), 
"AGE" NUMBER(2,0), 
"SEX" CHAR(1), 
"CONTACTNO" VARCHAR2(25), 
"HISTORY" VARCHAR2(4000),  
PRIMARY KEY ("PATIENTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table PATIENTSB
--------------------------------------------------------
CREATE TABLE "PATIENTSB" 
("PATIENTNO" NUMBER(10,0), 
"PATIENTNAME" VARCHAR2(50), 
"AGE" NUMBER(2,0), 
"SEX" CHAR(1), 
"CONTACTNO" VARCHAR2(25), 
"HISTORY" VARCHAR2(4000),  
PRIMARY KEY ("PATIENTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------
CREATE TABLE "CUSTOMERS" 
("CUSTOMERNO" NUMBER(10,0) NOT NULL ENABLE, 
"CUSTOMERNAME" VARCHAR2(25), 
"DATEOFBIRTH" DATE, 
"ADDRESS" VARCHAR2(50), 
"CITY" VARCHAR2(25), 
"STATE" VARCHAR2(25), 
"CONTACTNO" VARCHAR2(20), 
"PANNO" VARCHAR2(15), 
"PASSPORTNO" VARCHAR2(15), 
"ANNUALINCOME" NUMBER(12,2), 
"MARITALSTATUS" CHAR(1),  
CONSTRAINT "CUSTOMERS_PK" PRIMARY KEY ("CUSTOMERNO") ENABLE); 

--------------------------------------------------------
--  DDL for Table OLDCUSTOMERS
--------------------------------------------------------
CREATE TABLE "OLDCUSTOMERS" 
("CUSTOMERNO" NUMBER(10,0), 
"CUSTOMERNAME" VARCHAR2(25), 
"DATEOFBIRTH" DATE, 
"ADDRESS" VARCHAR2(50), 
"CITY" VARCHAR2(25), 
"STATE" VARCHAR2(25), 
"CONTACTNO" VARCHAR2(20), 
"PANNO" VARCHAR2(15), 
"PASSPORTNO" VARCHAR2(15), 
"ANNUALINCOME" NUMBER(12,2), 
"MARITALSTATUS" CHAR(1)); 

--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------
CREATE TABLE "DEPARTMENTS" 
("DEPTNO" NUMBER(10,0) NOT NULL ENABLE, 
"DEPARTMENTNAME" VARCHAR2(25), 
"CAPACITY" NUMBER(5,0),  
CONSTRAINT "DEPARTMENTS_PK" PRIMARY KEY ("DEPTNO") ENABLE); 

--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------
CREATE TABLE "EMPLOYEES" 
("EMPLOYEENO" NUMBER(10,0) NOT NULL ENABLE, 
"FIRSTNAME" VARCHAR2(25), 
"LASTNAME" VARCHAR2(25), 
"DATEOFBIRTH" DATE, 
"GENDER" CHAR(1), 
"MARITALSTATUS" CHAR(1), 
"ADDRESS" VARCHAR2(50), 
"CONTACTNO" VARCHAR2(20), 
"SALARY" NUMBER(12,2), 
"DESIGNATION" VARCHAR2(25), 
"MANAGERNO" NUMBER(10,0), 
"DEPTNO" NUMBER(10,0), 
"ABOUTME" VARCHAR2(4000), 
"USERNAME" VARCHAR2(25), 
"PASSWORD" VARCHAR2(25),  
CONSTRAINT "EMPLOYEES_PK" PRIMARY KEY ("EMPLOYEENO") ENABLE,  
CONSTRAINT "CONTACTNOFORMAT" CHECK (REGEXP_LIKE(ContactNo, '^[[:digit:]]{2}-[[:digit:]]{3}-[[:digit:]]{8}$')) ENABLE,  
CONSTRAINT "EMPLOYEES_UK1" UNIQUE ("USERNAME") ENABLE,  
CONSTRAINT "EMPLOYEES_EMPLOYEES_FK1" FOREIGN KEY ("MANAGERNO") REFERENCES "EMPLOYEES" ("EMPLOYEENO") ENABLE,  
CONSTRAINT "EMPLOYEES_DEPARTMENTS_FK1" FOREIGN KEY ("DEPTNO") REFERENCES "DEPARTMENTS" ("DEPTNO") ENABLE); 

--------------------------------------------------------
--  DDL for Table OLDEMPLOYEES
--------------------------------------------------------
CREATE TABLE "OLDEMPLOYEES" 
("EMPLOYEENO" NUMBER(10,0), 
"FIRSTNAME" VARCHAR2(25), 
"LASTNAME" VARCHAR2(25), 
"DATEOFBIRTH" DATE, 
"GENDER" CHAR(1), 
"MARITALSTATUS" CHAR(1), 
"ADDRESS" VARCHAR2(50), 
"CONTACTNO" VARCHAR2(20), 
"SALARY" NUMBER(12,2), 
"DESIGNATION" VARCHAR2(25), 
"MANAGERNO" NUMBER(10,0), 
"DEPTNO" NUMBER(10,0), 
"NOOFLEAVES" NUMBER(2,0), 
"ABOUTME" VARCHAR2(4000), 
"USERNAME" VARCHAR2(25), 
"PASSWORD" VARCHAR2(25));

--------------------------------------------------------
--  DDL for Table EMPLOYEESDEPT
--------------------------------------------------------
CREATE TABLE "EMPLOYEESDEPT" 
("EMPLOYEENO" NUMBER(10,0), 
"FIRSTNAME" VARCHAR2(25), 
"LASTNAME" VARCHAR2(25), 
"SALARY" VARCHAR2(255), 
"DESIGNATION" VARCHAR2(255), 
"MANAGERNO" VARCHAR2(255), 
"DEPTNO" VARCHAR2(255), 
"DEPARTMENTNAME" VARCHAR2(255), 
"DATEOFBIRTH" DATE, 
"CONTACTNO" VARCHAR2(20), 
"USERNAME" VARCHAR2(25), 
"PASSWORD" VARCHAR2(25));

--------------------------------------------------------
--  DDL for Table EMPLOYEEMUSTER
--------------------------------------------------------
CREATE TABLE "EMPLOYEEMUSTER" 
("EMPLOYEENO" NUMBER(10,0), 
"MUSTERDATE" DATE, 
"ATTENDANCE" VARCHAR2(15), 
"INTIME" TIMESTAMP (6), 
"OUTTIME" TIMESTAMP (6)) ; 

--------------------------------------------------------
--  DDL for Table MUMBAIEMPLOYEES
--------------------------------------------------------
CREATE TABLE "MUMBAIEMPLOYEES" 
("EMPLOYEENO" NUMBER(10,0), 
"FIRSTNAME" VARCHAR2(50), 
"LASTNAME" VARCHAR2(50), 
"SALARY" NUMBER(12,2), 
"DEPTNO" NUMBER(10,0), 
"GENDER" VARCHAR2(10));

--------------------------------------------------------
--  DDL for Table PUNEEMPLOYEES
--------------------------------------------------------
CREATE TABLE "PUNEEMPLOYEES" 
("EMPLOYEENO" NUMBER(10,0), 
"FIRSTNAME" VARCHAR2(50), 
"LASTNAME" VARCHAR2(50), 
"SALARY" NUMBER(12,2), 
"DEPTNO" NUMBER(10,0), 
"GENDER" VARCHAR2(10));

--------------------------------------------------------
--  DDL for Table EMPLEAVERECORDS
--------------------------------------------------------
CREATE TABLE "EMPLEAVERECORDS" 
("EMPLOYEENO" NUMBER(10,0), 
"MONTH" VARCHAR2(10), 
"YEAR" NUMBER(4,0), 
"NOOFLEAVES" NUMBER(4,0), 
"DEPTNO" NUMBER(10,0));

--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------
CREATE TABLE "PRODUCTS" 
("PRODUCTNAME" VARCHAR2(25) NOT NULL ENABLE, 
"PRODUCTCOLOR" VARCHAR2(25), 
"PRODUCTMAKE" VARCHAR2(25), 
"PRODUCTMODEL" VARCHAR2(25), 
"MANUFACTURINGYEAR" NUMBER(4,0), 
"PRICE" NUMBER(12,2), 
CONSTRAINT "PRODUCTS_PK" PRIMARY KEY ("PRODUCTNAME") ENABLE);

--------------------------------------------------------
--  DDL for Table PRODUCTSA
--------------------------------------------------------
CREATE TABLE "PRODUCTSA" 
("PRODUCTNAME" VARCHAR2(25) NOT NULL ENABLE, 
"COST" NUMBER(12,2), 
"COLOR" VARCHAR2(25), 
"QTYINHAND" NUMBER(5,0), 
"MANUFACTURER" VARCHAR2(25),  
CONSTRAINT "PRODUCTSA_PK" PRIMARY KEY ("PRODUCTNAME") ENABLE);

--------------------------------------------------------
--  DDL for Table PRODUCTSB
--------------------------------------------------------
CREATE TABLE "PRODUCTSB" 
("PRODUCTNAME" VARCHAR2(25) NOT NULL ENABLE, 
"COST" NUMBER(12,2), 
"COLOR" VARCHAR2(25), 
"QTYINHAND" NUMBER(5,0), 
"MANUFACTURER" VARCHAR2(25),  
CONSTRAINT "PRODUCTSB_PK" PRIMARY KEY ("PRODUCTNAME") ENABLE);

--------------------------------------------------------
--  DDL for Table ECONOMICPRODUCTS
--------------------------------------------------------
CREATE TABLE "ECONOMICPRODUCTS" 
("ORDERTOTAL" NUMBER(*,0), 
"ORDERNO" VARCHAR2(10), 
"PRODUCTNO" VARCHAR2(10));

--------------------------------------------------------
--  DDL for Table PRIORITYPRODUCTS
--------------------------------------------------------
CREATE TABLE "PRIORITYPRODUCTS" 
("ORDERTOTAL" NUMBER(*,0), 
"ORDERNO" VARCHAR2(10), 
"PRODUCTNO" VARCHAR2(10));

--------------------------------------------------------
--  DDL for Table SPECIALPRODUCTS
--------------------------------------------------------
CREATE TABLE "SPECIALPRODUCTS" 
("ORDERTOTAL" NUMBER(*,0), 
"ORDERNO" VARCHAR2(10), 
"PRODUCTNO" VARCHAR2(10));

--------------------------------------------------------
--  DDL for Table PRIORITYPRODUCTSSALES
--------------------------------------------------------
CREATE TABLE "PRIORITYPRODUCTSSALES" 
("PRODUCTNO" VARCHAR2(10), 
"COSTPRICE" NUMBER(*,0));

--------------------------------------------------------
--  DDL for Table REGULARPRODUCTSSALES
--------------------------------------------------------
CREATE TABLE "REGULARPRODUCTSSALES" 
("PRODUCTNO" VARCHAR2(10), 
"COSTPRICE" NUMBER(*,0));

--------------------------------------------------------
--  DDL for Table PRODUCTSALES
--------------------------------------------------------
CREATE TABLE "PRODUCTSALES" 
("DATESOLD" DATE, 
"PRODUCTNO" VARCHAR2(10), 
"TOTALSALES" NUMBER(*,0));

--------------------------------------------------------
--  DDL for Table PRODUCTDEMAND
--------------------------------------------------------
CREATE TABLE "PRODUCTDEMAND" 
("DATESOLD" DATE, 
"PRODUCTNO" VARCHAR2(10), 
"QTY" NUMBER(5,0));

--------------------------------------------------------
--  DDL for Table ORDERMASTER
--------------------------------------------------------
CREATE TABLE "ORDERMASTER" 
("ORDERNO" VARCHAR2(25) NOT NULL ENABLE, 
"ORDERDATE" DATE, 
"PRODUCTNO" VARCHAR2(25), 
"COSTPRICE" NUMBER(*,0), 
"QTY" NUMBER(5,0), 
"SELLPRICE" NUMBER(*,0), 
"ORDERSTATUS" CHAR(2),  
CONSTRAINT "ORDERMASTER_PK" PRIMARY KEY ("ORDERNO") ENABLE);

--------------------------------------------------------
--  DDL for Table PURCHASEORDERS
--------------------------------------------------------
CREATE TABLE "PURCHASEORDERS" 
("RECEIPTDATE" DATE, 
"PURCHASEORDERXML" "XMLTYPE");

--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------
CREATE TABLE "ORDERS" 
("ORDERNO" NUMBER(10,0) NOT NULL ENABLE, 
"ORDERDATE" DATE, 
"CUSTOMERNO" NUMBER(10,0), 
"ORDERAMOUNT" BINARY_FLOAT, 
"ORDERSTATUS" VARCHAR2(20), 
"ORDERCODE" VARCHAR2(20),  
CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ORDERNO") ENABLE,  
CONSTRAINT "ORDERS_CUSTOMERS_FK1" FOREIGN KEY ("CUSTOMERNO") REFERENCES "CUSTOMERS" ("CUSTOMERNO") ENABLE); 

--------------------------------------------------------
--  DDL for Table ORDERDETAILS
--------------------------------------------------------
CREATE TABLE "ORDERDETAILS" 
("ORDERNO" NUMBER(10,0) NOT NULL ENABLE, 
"ORDERDATE" DATE, 
"PRODUCTNAME" VARCHAR2(25) NOT NULL ENABLE, 
"COST" NUMBER(12,2) NOT NULL ENABLE, 
"QTY" NUMBER(5,0), 
"EMPLOYEENO" NUMBER(10,0), 
"CUSTOMERNAME" VARCHAR2(25),  
CONSTRAINT "ORDERDETAILS_PK" PRIMARY KEY ("ORDERNO", "PRODUCTNAME") ENABLE,  
CONSTRAINT "ORDERDETAILS_EMPLOYEES_FK1" FOREIGN KEY ("EMPLOYEENO") REFERENCES "EMPLOYEES" ("EMPLOYEENO") ENABLE,  
CONSTRAINT "ORDERDETAILS_PRODUCTS_FK1" FOREIGN KEY ("PRODUCTNAME") REFERENCES "PRODUCTS" ("PRODUCTNAME") ENABLE); 

--------------------------------------------------------
--  DDL for Table INVOICES
--------------------------------------------------------
CREATE TABLE "INVOICES" 
("INVOICENO" VARCHAR2(50) NOT NULL ENABLE, 
"INVOICEDATE" DATE, 
"INVOICEAMOUNT" BINARY_FLOAT, 
"CUSTOMERNO" NUMBER(10,0), 
"ORDERNO" NUMBER(10,0),  
CONSTRAINT "INVOICES_PK" PRIMARY KEY ("INVOICENO") ENABLE,  
CONSTRAINT "INVOICES_ORDERS_FK1" FOREIGN KEY ("ORDERNO") REFERENCES "ORDERS" ("ORDERNO") ENABLE,  
CONSTRAINT "INVOICES_CUSTOMERS_FK1" FOREIGN KEY ("CUSTOMERNO") REFERENCES "CUSTOMERS" ("CUSTOMERNO") ENABLE); 

--------------------------------------------------------
--  DDL for Table DISCOUNTS
--------------------------------------------------------
CREATE TABLE "DISCOUNTS" 
("DISCOUNT" NUMBER(2,0),  
CONSTRAINT "DISCOUNTS_UK1" UNIQUE ("DISCOUNT") ENABLE);

--------------------------------------------------------
--  DDL for Table SPENDINGCATEGORY
--------------------------------------------------------
CREATE TABLE "SPENDINGCATEGORY" 
("MINAMOUNT" NUMBER(12,2), 
"MAXAMOUNT" NUMBER(12,2), 
"CATEGORY" VARCHAR2(25) NOT NULL ENABLE,  
CONSTRAINT "SPENDINGCATEGORY_PK" PRIMARY KEY ("CATEGORY") ENABLE);

--------------------------------------------------------
--  DDL for Table ACCOUNTS
--------------------------------------------------------
CREATE TABLE "ACCOUNTS" 
("ACCOUNTNO" NUMBER(10,0) NOT NULL ENABLE, 
"ACCOUNTHOLDERNAME" VARCHAR2(25), 
"ACCOUNTOPENINGDATE" DATE, 
"ACCOUNTTYPE" CHAR(2), 
"CURRENTBALANCE" NUMBER(12,2),  
CONSTRAINT "ACCOUNTS_PK" PRIMARY KEY ("ACCOUNTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table ACCOUNTSAUDITTRAIL
--------------------------------------------------------
CREATE TABLE "ACCOUNTSAUDITTRAIL" 
("ACCOUNTNO" NUMBER(10,0), 
"ACCOUTHOLDERNAME" VARCHAR2(25), 
"ACCOUNTOPENINGDATE" DATE, 
"ACCOUNTTYPE" CHAR(2), 
"CURRENTBALANCE" NUMBER(*,0), 
"OPERATOR" VARCHAR2(25), 
"OPERATIONDATE" DATE, 
"OPERATIONTYPE" VARCHAR2(4000));

--------------------------------------------------------
--  DDL for Table TRANSACTIONS
--------------------------------------------------------
CREATE TABLE "TRANSACTIONS" 
("TRANSACTIONNO" NUMBER(10,0) NOT NULL ENABLE, 
"ACCOUNTNO" NUMBER(10,0), 
"TRANSACTIONDATE" DATE, 
"PARTICULARS" VARCHAR2(25), 
"TRANSACTIONTYPE" CHAR(2), 
"AMOUNT" NUMBER(12,2),  
CONSTRAINT "TRANSACTIONS_PK" PRIMARY KEY ("TRANSACTIONNO") ENABLE,  
CONSTRAINT "TRANSACTIONS_ACCOUNTS_FK1" FOREIGN KEY ("ACCOUNTNO") REFERENCES "ACCOUNTS" ("ACCOUNTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table TRANSACTIONSLOG
--------------------------------------------------------
CREATE TABLE "TRANSACTIONSLOG" 
("TRANSACTIONNO" NUMBER(10,0) NOT NULL ENABLE, 
"ACCOUNTNO" NUMBER(10,0), 
"TRANSACTIONDATE" DATE, 
"PARTICULARS" VARCHAR2(25), 
"TRANSACTIONTYPE" CHAR(2), 
"AMOUNT" NUMBER(12,2), 
"STATUS" VARCHAR2(15),  
CONSTRAINT "TRANSACTIONSLOG_PK" PRIMARY KEY ("TRANSACTIONNO") ENABLE,  
CONSTRAINT "TRANSACTIONSLOG_ACCOUNTS_FK1" FOREIGN KEY ("ACCOUNTNO") REFERENCES "ACCOUNTS" ("ACCOUNTNO") ENABLE);

--------------------------------------------------------
--  DDL for Table BANKBOOK
--------------------------------------------------------
CREATE TABLE "BANKBOOK" 
("BOOKNO" NUMBER(10,0), 
"ACCOUNTNO" VARCHAR2(10), 
"BOOKDATE" DATE, 
"OPBAL" BINARY_FLOAT, 
"CLBAL" BINARY_DOUBLE,  
PRIMARY KEY ("BOOKNO") ENABLE);

--------------------------------------------------------
--  DDL for Table MOVIES
--------------------------------------------------------
CREATE TABLE "MOVIES" 
("MOVIENO" NUMBER(*,0) NOT NULL ENABLE, 
"MOVIENAME" VARCHAR2(25), 
"PRICE" NUMBER(*,0), 
"CATEGORY" VARCHAR2(25), 
"DIRECTOR" VARCHAR2(25),  
CONSTRAINT "MOVIES_PK" PRIMARY KEY ("MOVIENO") ENABLE);

--------------------------------------------------------
--  DDL for Table RENTALS
--------------------------------------------------------
CREATE TABLE "RENTALS" 
("RENTNO" NUMBER(10,0), 
"RENTALDATE" DATE, 
"MOVIENO" NUMBER(10,0), 
"MEMBERNAME" VARCHAR2(25), 
"RETURNDATE" DATE,  
PRIMARY KEY ("RENTNO") ENABLE,  
CONSTRAINT "RENTALS_MOVIES_FK1" FOREIGN KEY ("MOVIENO") REFERENCES "MOVIES" ("MOVIENO") ENABLE) ;

--------------------------------------------------------
--  DDL for Table SPECIALTIES
--------------------------------------------------------
CREATE TABLE "SPECIALTIES" 
("SPECIALTYNO" NUMBER(10,0) NOT NULL ENABLE, 
"SPECIALTY" VARCHAR2(15),  
CONSTRAINT "SPECIALTIES_PK" PRIMARY KEY ("SPECIALTYNO") ENABLE);

--------------------------------------------------------
--  DDL for Table AUTHORS
--------------------------------------------------------
CREATE TABLE "AUTHORS" 
("AUTHORNO" NUMBER(10,0) NOT NULL ENABLE, 
"AUTHORNAME" VARCHAR2(25), 
"CONTACTNO" NUMBER(15,0), 
"SPECIALTYNO" NUMBER(10,0),  
CONSTRAINT "AUTHORS_PK" PRIMARY KEY ("AUTHORNO") ENABLE,  
CONSTRAINT "AUTHORS_SPECIALTIES_FK1" FOREIGN KEY ("SPECIALTYNO") REFERENCES "SPECIALTIES" ("SPECIALTYNO") ENABLE);

--------------------------------------------------------
--  DDL for Table PUBLISHERS
--------------------------------------------------------
CREATE TABLE "PUBLISHERS" 
("PUBLISHERNO" NUMBER(10,0) NOT NULL ENABLE, 
"PUBLISHERNAME" VARCHAR2(25), 
"ADDRESS" VARCHAR2(50),  
CONSTRAINT "PUBLISHERS_PK" PRIMARY KEY ("PUBLISHERNO") ENABLE);

--------------------------------------------------------
--  DDL for Table BOOKS
--------------------------------------------------------
CREATE TABLE "BOOKS" 
("ISBN" VARCHAR2(20) NOT NULL ENABLE, 
"AUTHORNO" NUMBER(10,0), 
"BOOKNAME" VARCHAR2(50), 
"COST" NUMBER(12,2), 
"NOOFPAGES" NUMBER(4,0), 
"NOOFCHAPTERS" NUMBER(2,0), 
"PUBLISHERNO" NUMBER(10,0), 
"CATEGORY" VARCHAR2(25),  
CONSTRAINT "BOOKS_PK" PRIMARY KEY ("ISBN") ENABLE,  
CONSTRAINT "BOOKS_AUTHORS_FK1" FOREIGN KEY ("AUTHORNO") REFERENCES "AUTHORS" ("AUTHORNO") ENABLE,  
CONSTRAINT "BOOKS_PUBLISHERS_FK1" FOREIGN KEY ("PUBLISHERNO") REFERENCES "PUBLISHERS" ("PUBLISHERNO") ENABLE);

--------------------------------------------------------
--  DDL for Table BOOKSALES
--------------------------------------------------------
CREATE TABLE "BOOKSALES" 
("BOOKNAME" VARCHAR2(50) NOT NULL ENABLE, 
"AUTHORNAME" VARCHAR2(25) NOT NULL ENABLE, 
"YEAR" NUMBER(4,0) NOT NULL ENABLE, 
"QTYSOLD" NUMBER(10,0), 
"REVENUEEARNED" NUMBER(12,2),  
CONSTRAINT "BOOKSALES_PK" PRIMARY KEY ("BOOKNAME", "AUTHORNAME", "YEAR") ENABLE);

--------------------------------------------------------
--  DDL for Table BOOKRENTALS
--------------------------------------------------------
CREATE TABLE "BOOKRENTALS" 
("RENTNO" NUMBER(10,0), 
"BOOKNAME" VARCHAR2(25), 
"MEMBERNO" NUMBER(10,0), 
"RENTDATE" DATE, 
"DURATION" INTERVAL YEAR (2) TO MONTH,  
PRIMARY KEY ("RENTNO") ENABLE);


----------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  TABLE DATA 
--------------------------------------------------------
----------------------------------------------------------------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE TRIGONOMETRY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TRIGONOMETRY
Insert into TRIGONOMETRY (TRIGONO) values (0);
Insert into TRIGONOMETRY (TRIGONO) values (1);
Insert into TRIGONOMETRY (TRIGONO) values (1.570796326794896619);
Insert into TRIGONOMETRY (TRIGONO) values (3.141592653589793238);
Insert into TRIGONOMETRY (TRIGONO) values (-1);
Insert into TRIGONOMETRY (TRIGONO) values (-1.570796326794896619);
Insert into TRIGONOMETRY (TRIGONO) values (-3.141592653589793238);
---------------------------------------------------
--   END DATA FOR TABLE TRIGONOMETRY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SUBSCRIBERMASTER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SUBSCRIBERMASTER
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (1,'Sharanam','Shah','Flora Deccan','M. G. Road','Andheri','Mumbai',400058,'India',28822883,'A');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (2,'Vaishali','Shah','Blue Queens','S. V. Road','Bandra','Pune',400050,'India',26128736,'A');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (3,'Kanchan','Toprani','Shankar Apts','L. J. Road','Wadala','Delhi',400031,'India',24157362,'N');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (4,'Anil','Naik','Makanji Kunj','Savarkar Road','Matunga','Bangalore',400025,'India',24058723,'A');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (5,'Nikhil','Arora','Krishna Kunj','Edenwala Road','King Circle','Mumbai',400024,'India',24768788,'A');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (6,'Stuti','Shah','Aashirwad','Gadhakari Road','Colaba','Mumbai',400012,'India',27364812,'N');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (7,'Anuraddha','Iyer','Raj Bldg','Navy Road','Khar','Pune',400087,'India',24563567,'A');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (8,'Mital','Gandhi','Prakash Towers','Cadell Road','Borivali','Delhi',400045,'India',22356754,'N');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (9,'Chaitanya','Malhotra','Advani Bldg','Bal., Govinddas, Road','Dahisar','Mumbai',400090,'India',25437689,'A');
Insert into SUBSCRIBERMASTER (ACCOUNTNO,FIRSTNAME,LASTNAME,BUILDINGNAME,ROAD,AREA,CITY,PINCODE,COUNTRY,CONTACTNO,STATUS) values (10,'Narendra','Dodhia','Pheonix Towers','Phoenix Road','Sewree','Delhi',400021,'India',27865679,'N');
---------------------------------------------------
--   END DATA FOR TABLE SUBSCRIBERMASTER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DISCONNECTEDSUBSCRIBERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DISCONNECTEDSUBSCRIBERS
Insert into DISCONNECTEDSUBSCRIBERS (ACCOUNTNO,DISCONNECTED) values (1,'Yes');
Insert into DISCONNECTEDSUBSCRIBERS (ACCOUNTNO,DISCONNECTED) values (2,'Yes');
Insert into DISCONNECTEDSUBSCRIBERS (ACCOUNTNO,DISCONNECTED) values (3,'No');
---------------------------------------------------
--   END DATA FOR TABLE DISCONNECTEDSUBSCRIBERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE FAMILYMEMBERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FAMILYMEMBERS
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (1,'Kantilal','Shah',null);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (2,'Devchand','Shah',null);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (3,'Lila','Mehta',null);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (4,'Chaitanya','Shah',1);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (5,'Gopi','Shah',3);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (6,'Narendra','Shah',2);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (7,'Sharanam','Shah',4);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (8,'Stuti','Shah',4);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (9,'Vaishali','Shah',6);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (10,'Srivedi','Dave',1);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (11,'Vrinda','Shah',1);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (12,'Geeta','Patel',1);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (13,'Dhiraj','Shah',2);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (14,'Bipin','Shah',2);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (15,'Ramila','Haria',2);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (16,'Mira','Zaveri',1);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (17,'Yogini','Chitnis',1);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (18,'Chetan','Shah',13);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (19,'Meenal','Shah',13);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (20,'Manali','Shah',14);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (21,'Keyur','Shah',14);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (22,'Amit','Haria',15);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (23,'Kajal','Shah',15);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (24,'Mithil','Dave',10);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (25,'Hetal','Patel',10);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (26,'Ashish','Zaveri',16);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (27,'Dhananjay','Chitnis',17);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (28,'Bhuadutt','Patel',12);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (29,'Krupali','Patel',12);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (30,'Vrudhi','Haria',22);
Insert into FAMILYMEMBERS (MEMBERNO,FIRSTNAME,LASTNAME,PARENTNO) values (31,'Shrauya','Dave',24);
---------------------------------------------------
--   END DATA FOR TABLE FAMILYMEMBERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE STUDENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STUDENTS
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('A200520081','Nita',29);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S200520082','Sanjana Kapur',36);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('C20052008127','Gopi Shah',48);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S1','Sharanam',28);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S2','Vaishali',28);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S3','Stuti',23);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S5','Mandhar',20);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S4','Sonal',30);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S6','Anil',31);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S7','Seema',32);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S9','Vikram',24);
Insert into STUDENTS (STUDENTNO,STUDENTNAME,AGE) values ('S8','Amit',19);
---------------------------------------------------
--   END DATA FOR TABLE STUDENTS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE KNOWLEDGEBASE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into KNOWLEDGEBASE
Insert into KNOWLEDGEBASE (URL) values ('http://www.sharanamshah.com/articles/Oracle/Chap1.html');
Insert into KNOWLEDGEBASE (URL) values ('http://www.vaishalishahonline.com/Downloads/Apache/Setup.html');
Insert into KNOWLEDGEBASE (URL) values ('http://www.sharanamshah.com/articles/PHP/Chap7.html');
Insert into KNOWLEDGEBASE (URL) values ('http://www.rediff.com/news/2008/may/04look.htm');
Insert into KNOWLEDGEBASE (URL) values ('http://specials.rediff.com/money/2008/apr/30ipl1.htm');
Insert into KNOWLEDGEBASE (URL) values ('http://www.rediff.com/cricket/2008/may/04shoaib.htm');
Insert into KNOWLEDGEBASE (URL) values ('http://www.rediff.com/news/2008/may/03sarab.htm');
Insert into KNOWLEDGEBASE (URL) values ('http://www.rediff.com/money/2008/may/01mittal.htm');
Insert into KNOWLEDGEBASE (URL) values ('http://specials.rediff.com/money/2008/may/02oil1.htm');
Insert into KNOWLEDGEBASE (URL) values ('http://www.rediff.com/money/2008/may/03guest.htm');
---------------------------------------------------
--   END DATA FOR TABLE KNOWLEDGEBASE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PATIENTSA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PATIENTSA
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (2,'Lucy Joshi',32,'F','91-022-433224456','Lucy has a 4-week history of severe headache.  Initially, Lucy reported a disturbance in her vision, saying that she saw purplish-black colour spots in her vision.  This was followed by the onset of a severe headache located at the right frontal and temporal regions, radiating to the right occipital area.  The headache commenced as mild and dull pain then became severe and throbbing in nature.  It was worsened by straining and coughing.  Lucy likened the pain to being stabbed and squeezed by someone continuously and described the headache as the most horrible she had ever had.  Lucys GP prescribed her Panadol.  The medication did not help and Lucy started to experience nausea, vomiting, and mild photohobia.  She also experienced pain at the nape of her neck.');
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (3,'Jeenal Oswal',64,'F','91-011-9988776655','Jeenal was referred to an ophthalmologist.  Jeenal was very depressed An angiogram showed signs of venous blockage in the retinal veins with vision issues.  The headake persisted, and 3 weeks after it commenced, Jeenal was becoming more worried about it. She was experiencing sleep disturbance, poor appetite and weight loss (she reports losing 5kg over three weeks). At the time, Jeenal resigned from work, thinking that her symptoms were stress-related and she probably needed a break.  Jeenal also sought a second opinion from another GP.  A CT scan revealed a tumour in the right frontal lobe, which was causing oedema and a mid-line shift.');
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (1,'Sanjay Kapoor',54,'M','91-022-234543212','Sanjay had obesity, joint pain. s/p hyst one year ago, subsequent weight gain of 25 lbs. and worsening joint pain. Pain worse when standing. PMH: fibroids, arthritis. A senior doctor named Dr. Amol is treating him. He had high temperature ');
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (5,'Neeta Shukla',34,'M','91-032-77665678','Neeta has a set of medical conditions that are summarised as HERNS (Hereditary Endotheliopathy, Retinopathy, Neuropathy and Stroke).  10 years ago, she experienced symptoms of proptosis, tachycardia, thirst and vomiting and was diagnosed with Graves disease.  She was treated with Neomercazole.  The coexisting medical condition may be exerting an impact on Neetas current anxious state.  In addition, her apparent poor coping mechanisms, which she has described as part of her personality trait, might also be facilitating her anxious state.In 1996, Neeta experienced a minor stroke, which caused temporary paralysis in her left arm.  She was monitored in hospital for three weeks and recovered. 3 years ago, Neeta was diagnosed as lupus carrier.  Since the diagnosis, Neeta has been taking Warfarin and she expects to maintain Warfarin therapy for life.  Her condition has exacerbated a series of endotheliopathies, predisposing Neeta to retinal microvascular occlusion. 2 weeks prior to her current hospital admission, Neeta was also diagnosed with hypercholesterolemia, a suspected genetic disorder. She is currently taking Lipitol to manage this.');
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (6,'Geeta Valvekar',76,'F','91-011-45665678','On general inspection, Geeta appeared to be tired.  She showed a prominent sign of proptosis.  She also had a few bruises on her left arm, due to frequent cannulation and blood test, and a scar from her recent biopsy on the right side of her forehead. On cardiovascular, respiratory and abdominal examinations, no significant signs were detected.  Blood pressure was normal, 130/82.  Pulse rate was 80 beats per minute and respiratory rate was 14 beats per minute. On neurological examination, there were no signs of muscle wasting, abnormal movements or tremor.  The upper limbs showed full range of active and passive movements.  On flexion and extension of the right arm, however, pain was detected.  The patient had normal tone, power, coordination and sensation in both arms.  Reflexes, however, were increased in both arms. Examination of the lower limb showed normal tone, power, coordination and sensations.  Plantar reflexes in both legs, however, were decreased.  There were no signs of abnormal gaits.  Trendelenburg test, Pull test, and Rombergs test all showed negative results.');
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (4,'Durgesh Mehta',42,'M','91-024-77665523','Durgesh was immediately admitted to MMC for biopsy of the tumour. The report moves closer to present time. The present perfect tense is used to refer to events in the patients history that occurred prior to the interview but still bear current relevance. Since receiving the diagnosis of neural tumour, Durgesh has felt depress and anxious about his health. He  has lost enthusiasm for her usual activities, such as going shopping and taking care of his son. Dr. Amul is treating him.');
Insert into PATIENTSA (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (7,'Sanjana Kapur',29,'F','91-032-87654678','General appearance and behavior: Sanjana is a 34 year-old Indian-Portuguese woman of average weight and height.  At the time of examination, she was well groomed and dressed.  She was not confined to bed.  On appearance, were no signs of tremor or abnormal movements; however, Sanjana showed signs of proptosis, consistent with Graves disease. Sanjana was cooperative throughout the interview.  She maintained eye contact, except during the times when recounting the history of her fathers death and her previous marriage. Then, she appeared in depression. Speech: Sanjana articulated herself clearly.  She answered questions spontaneously, although at slow rate and speed.  She spoke softly throughout the conversation, particularly when mentioning past unhappiness. Affect and mood: Sanjanas affect was her range of mood reduced. She also appeared anxious and irritable. Thought: a. Stream Sanjanas thought stream was decreased.  It was also disturbed and Sanjanas speech slowed down and content reduced significantly when mentioning past unhappiness. b. Form: Sanjana did not exhibit any formal thought disorders.  She was able to answer questions spontaneously and directly. She did not use any new or created words. Sanjana did experience thought block when exploring sensitivities in her past.  No negative thought disorder was detected. c. Content: Sanjana was anxious about her health.  She was obsessed with knowing her biopsy result and was constantly asking the doctors and nurses for her result.  Thoughts that the tumour could be cancer were causing Sanjana to lack motivation and feel restless.  Sanjana was also feeling guilty for not being able to care for her son and fiance since having the headake.  Other than feeling obsession and guilt, Sanjana has no other positive symptoms, such as delusions, phobias or compulsions.  Suicidal ideation was not detected. Perception: Sanjana exhibits normal perception.  Symptoms, such as illusions, misinterpretations, depersonalisation, passivity phenomena, were not elicited. Cognition: Sanjana was alert and orientated to time and place.');
---------------------------------------------------
--   END DATA FOR TABLE PATIENTSA
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PATIENTSB
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PATIENTSB
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (2,'Lucy Joshi',32,'F','91-022-433224456','Lucy has a 4-week history of severe headache.  Initially, Lucy reported a disturbance in her vision, saying that she saw purplish-black colour spots in her vision.  This was followed by the onset of a severe headache located at the right frontal and temporal regions, radiating to the right occipital area.  The headache commenced as mild and dull pain then became severe and throbbing in nature.  It was worsened by straining and coughing.  Lucy likened the pain to being stabbed and squeezed by someone continuously and described the headache as the most horrible she had ever had.  Lucys GP prescribed her Panadol.  The medication did not help and Lucy started to experience nausea, vomiting, and mild photohobia.  She also experienced pain at the nape of her neck.');
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (3,'Jeenal Oswal',64,'F','91-011-9988776655','Jeenal was referred to an ophthalmologist.  Jeenal was very depressed An angiogram showed signs of venous blockage in the retinal veins with vision issues.  The headake persisted, and 3 weeks after it commenced, Jeenal was becoming more worried about it. She was experiencing sleep disturbance, poor appetite and weight loss (she reports losing 5kg over three weeks). At the time, Jeenal resigned from work, thinking that her symptoms were stress-related and she probably needed a break.  Jeenal also sought a second opinion from another GP.  A CT scan revealed a tumour in the right frontal lobe, which was causing oedema and a mid-line shift.');
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (1,'Sanjay Kapoor',54,'M','91-022-234543212','Sanjay had obesity, joint pain. s/p hyst one year ago, subsequent weight gain of 25 lbs. and worsening joint pain. Pain worse when standing. PMH: fibroids, arthritis. A senior doctor named Dr. Amol is treating him. He had high temperature ');
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (5,'Neeta Shukla',34,'M','91-032-77665678','Neeta has a set of medical conditions that are summarised as HERNS (Hereditary Endotheliopathy, Retinopathy, Neuropathy and Stroke).  10 years ago, she experienced symptoms of proptosis, tachycardia, thirst and vomiting and was diagnosed with Graves disease.  She was treated with Neomercazole.  The coexisting medical condition may be exerting an impact on Neetas current anxious state.  In addition, her apparent poor coping mechanisms, which she has described as part of her personality trait, might also be facilitating her anxious state.In 1996, Neeta experienced a minor stroke, which caused temporary paralysis in her left arm.  She was monitored in hospital for three weeks and recovered. 3 years ago, Neeta was diagnosed as lupus carrier.  Since the diagnosis, Neeta has been taking Warfarin and she expects to maintain Warfarin therapy for life.  Her condition has exacerbated a series of endotheliopathies, predisposing Neeta to retinal microvascular occlusion. 2 weeks prior to her current hospital admission, Neeta was also diagnosed with hypercholesterolemia, a suspected genetic disorder. She is currently taking Lipitol to manage this.');
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (6,'Geeta Valvekar',76,'F','91-011-45665678','On general inspection, Geeta appeared to be tired.  She showed a prominent sign of proptosis.  She also had a few bruises on her left arm, due to frequent cannulation and blood test, and a scar from her recent biopsy on the right side of her forehead. On cardiovascular, respiratory and abdominal examinations, no significant signs were detected.  Blood pressure was normal, 130/82.  Pulse rate was 80 beats per minute and respiratory rate was 14 beats per minute. On neurological examination, there were no signs of muscle wasting, abnormal movements or tremor.  The upper limbs showed full range of active and passive movements.  On flexion and extension of the right arm, however, pain was detected.  The patient had normal tone, power, coordination and sensation in both arms.  Reflexes, however, were increased in both arms. Examination of the lower limb showed normal tone, power, coordination and sensations.  Plantar reflexes in both legs, however, were decreased.  There were no signs of abnormal gaits.  Trendelenburg test, Pull test, and Rombergs test all showed negative results.');
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (4,'Durgesh Mehta',42,'M','91-024-77665523','Durgesh was immediately admitted to MMC for biopsy of the tumour. The report moves closer to present time. The present perfect tense is used to refer to events in the patients history that occurred prior to the interview but still bear current relevance. Since receiving the diagnosis of neural tumour, Durgesh has felt depress and anxious about his health. He  has lost enthusiasm for her usual activities, such as going shopping and taking care of his son. Dr. Amul is treating him.');
Insert into PATIENTSB (PATIENTNO,PATIENTNAME,AGE,SEX,CONTACTNO,HISTORY) values (7,'Sanjana Kapur',29,'F','91-032-87654678','General appearance and behavior: Sanjana is a 34 year-old Indian-Portuguese woman of average weight and height.  At the time of examination, she was well groomed and dressed.  She was not confined to bed.  On appearance, were no signs of tremor or abnormal movements; however, Sanjana showed signs of proptosis, consistent with Graves disease. Sanjana was cooperative throughout the interview.  She maintained eye contact, except during the times when recounting the history of her fathers death and her previous marriage. Then, she appeared in depression. Speech: Sanjana articulated herself clearly.  She answered questions spontaneously, although at slow rate and speed.  She spoke softly throughout the conversation, particularly when mentioning past unhappiness. Affect and mood: Sanjanas affect was her range of mood reduced. She also appeared anxious and irritable. Thought: a. Stream Sanjanas thought stream was decreased.  It was also disturbed and Sanjanas speech slowed down and content reduced significantly when mentioning past unhappiness. b. Form: Sanjana did not exhibit any formal thought disorders.  She was able to answer questions spontaneously and directly. She did not use any new or created words. Sanjana did experience thought block when exploring sensitivities in her past.  No negative thought disorder was detected. c. Content: Sanjana was anxious about her health.  She was obsessed with knowing her biopsy result and was constantly asking the doctors and nurses for her result.  Thoughts that the tumour could be cancer were causing Sanjana to lack motivation and feel restless.  Sanjana was also feeling guilty for not being able to care for her son and fiance since having the headake.  Other than feeling obsession and guilt, Sanjana has no other positive symptoms, such as delusions, phobias or compulsions.  Suicidal ideation was not detected. Perception: Sanjana exhibits normal perception.  Symptoms, such as illusions, misinterpretations, depersonalisation, passivity phenomena, were not elicited. Cognition: Sanjana was alert and orientated to time and place.');
---------------------------------------------------
--   END DATA FOR TABLE PATIENTSB
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CUSTOMERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CUSTOMERS
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (21,'Sharanam Chaitanya Shah','03-JAN-1981','20, Makanji Mansion, MG Road, 400076','Mumbai','Maharashtra','91-022-24440094','332245678','EH928',5000000,'M');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (22,'Vaishali Sharanam Shah','22-NOV-1981','Krishna Kunj, Thakur Lane, 400078','Mumbai','Maharashtra','91-022-27740094','229868746','FG893',100000,'F');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (23,'Anil Mayekar','22-NOV-1956','Advani Apts, Mumbai, 665534256','Pune','Maharashtra',null,'JDH7823J','YH876',400000,'M');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (24,'Hansel','29-OCT-1990','Jay Chambers,  7 Juhu, 774463524','Bangalore','Chennia','91-022-34340094','HSB9845','YS893',784000,'M');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (25,'Chaitanya Kantilal Shah','03-JAN-1981','14, Raheja Tower, 347236','Kottayam','Kerala','91-022-37640094','HSGD897','S892S',890000,'M');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (26,'Shravan Ashwin Benegal','22-SEP-1979','3, Shankar Bldg,  Mahim','Mount Abu','Rajasthan','91-022-40940094','KSI841J','N985H',783500,'M');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (27,'Prakash K Chouduary','07-JUL-1990','1st Floor, Kapod Nivas, Mulund','Ludhania','Punjab','91-022-47540094','GDY8734J','BH890',350000,'M');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (28,'Stuti Kapil Khanna','05-JUN-1967','3, Godrej Villa, Powai','Patna','Bihar','91-022-54140094','SKDI894','UN893',250000,'F');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (29,'Deepika Anil Bakshi','30-JAN-1981','Queensland Palace,  India','Indore','Madhya Pradesh','91-022-57440094','AJDH19024','EH928',5000000,'F');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (30,'Manali Narendra Naik','22-JAN-1981','Hiranadani Mansion,             Lion Road','Hyderabad','Andhra Pradesh','91-022-60740094','HGTF190287','UYUY768',65400,'F');
Insert into CUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (31,'Amit Paul','22-NOV-1956','Advani Apts, Mumbai',null,null,null,null,null,null,'U');
---------------------------------------------------
--   END DATA FOR TABLE CUSTOMERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE OLDCUSTOMERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into OLDCUSTOMERS
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (1,'Sharanam Chaitanya Shah','03-JAN-1981','20, Makanji Mansion, MG Road, 400076','Mumbai','Maharashtra','91-022-24440094','AJDH19024','EH928',5000000,'M');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (2,'Vaishali Sharanam Shah','22-NOV-1981','Krishna Kunj, Thakur Lane, 400078','Mumbai','Maharashtra','91-022-27740094','HIODS8092','FG893',100000,'F');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (3,'Anil Mayekar','22-NOV-1956','Advani Apts, Mumbai','Pune','Maharashtra',null,'JDH7823J','YH876',400000,'M');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (4,'Hansel','29-OCT-1990','Jay Chambers,  7 Juhu','Bangalore','Chennia','91-022-34340094','HSB9845','YS893',784000,'M');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (5,'Kantilal Shah','03-JAN-1981','14, Raheja Tower, 347236','Kottayam','Kerala','91-022-37640094','HSGD897','S892S',890000,'M');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (6,'Ramdass','22-SEP-1979','3, Shankar Bldg,  Mahim','Mount Abu','Rajasthan','91-022-40940094','KSI841J','N985H',783500,'M');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (7,'Raghu Bhatt','07-JUL-1990','1st Floor, Kapod Nivas, Mulund','Ludhania','Punjab','91-022-47540094','GDY8734J','BH890',350000,'M');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (8,'Parul','05-JUN-1967','3, Godrej Villa, Powai','Patna','Bihar','91-022-54140094','SKDI894','UN893',250000,'F');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (9,'Hitesh','03-JAN-1981','Queensland Palace,  India','Indore','Madhya Pradesh','91-022-57440094','AJDH19024','EH928',5000000,'F');
Insert into OLDCUSTOMERS (CUSTOMERNO,CUSTOMERNAME,DATEOFBIRTH,ADDRESS,CITY,STATE,CONTACTNO,PANNO,PASSPORTNO,ANNUALINCOME,MARITALSTATUS) values (10,'Ravi Sejpal','22-JAN-1981','Hiranadani Mansion,             Lion Road','Hyderabad','Andhra Pradesh','91-022-60740094','HGTF190287','UYUY768',65400,'F');
---------------------------------------------------
--   END DATA FOR TABLE OLDCUSTOMERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DEPARTMENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEPARTMENTS
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (7,'IT Department',20);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (1,'Sales Department',15);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (2,'HR Department',5);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (3,'Technical Department',25);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (4,'Purchase Department',15);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (5,'Customer Care Department',40);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (6,'Helpline Department',30);
Insert into DEPARTMENTS (DEPTNO,DEPARTMENTNAME,CAPACITY) values (9,'Accounts',null);
---------------------------------------------------
--   END DATA FOR TABLE DEPARTMENTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPLOYEES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLOYEES
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (1,'Sharanam','Shah','03-JAN-1981','M','M','Makanji Mansion','91-022-24440094',82500,'Technical Writing',null,4,'I can work with PHP, MySQL, Apache, Oracle, JSP. My Contact No is 8121-451969.','amSh1','ShSh00');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (9,'Anil','Mayekar','22-NOV-1956','M','U','Advani Apts, Mumbai',null,2750,'Peon',1,3,'One year experience in Word. Contact No 6644.983335.','ilMa9','AnMa50');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (10,'Chaitanya','Kapoor','04-APR-1962','M','U','Tilak Nagar, Mumbai','91-022-54140094',1320,'Peon',1,5,'One year experience in Word. ','yaKa10','ChKa20');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (11,'Amit','Paul','22-NOV-1956','M','U','Advani Apts, Mumbai',null,31207,'Peon',1,null,'One year experience in Word. Contact No 6644.983335.',null,null);
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (2,'Vaishali','Shah','09-FEB-1981','F','M','Makanji Mansion, Mumbai','91-022-31040094',55000,'Database Management',10,2,'I am comfortable working with Word, Powerpoint, Excel. My Phone No is 7131.461962.','liSh2','VaSh00');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (7,'Narendra','Dodhia','23-JUN-1980','M','M','Gokul Vihar, Mumbai','91-022-44240094',13578.4,'Accounts',2,3,'One year experience in Excel. Contact No 9844.983335.','raDo7','NaDo.4');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (8,'Meenal','Doshi','12-DEC-1987','F','U','Prakash Towers, Mumbai','91-022-47540094',49500,'Auditing',9,7,'One year experience in Word. ','alDo8','MeDo00');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (4,'Amit','Haria','11-NOV-1972','M','M','Krishna Kunj, Mumbai','91-022-34340094',22000,'Programming',7,2,'Contact me at 2671.978344.','itHa4','AmHa00');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (6,'Chetan','Dedhia','20-SEP-1965','M','U','Upendra Nagar, Mumbai','91-022-40940094',13553.1,'HR',4,3,'One year experience in Word. Contact No 5544.988765.','anDe6','ChDe.1');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (3,'Keyur','Kapoor','14-OCT-1984','M','U','Sita Sadan, Delhi','91-022-27740094',22000,'Testing',8,4,'I am comfortable working with only Word. My Phone No is 3131.987344.','urKa3','KeKa00');
Insert into EMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,ABOUTME,USERNAME,PASSWORD) values (5,'Abhishek','Benegal','28-FEB-1959','M','M','Thakur Complex, Mumbai','91-022-37640094',13334.2,'Sales',3,1,'Call me at 3322.554433.','ekBe5','AbBe.2');
---------------------------------------------------
--   END DATA FOR TABLE EMPLOYEES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE OLDEMPLOYEES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into OLDEMPLOYEES
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (11,'Sharanam','Shah','03-JAN-1981','M','M','Makanji Mansion','91-022-24440094',75000,'Technical Writing',null,6,5,'I can work with PHP, MySQL, Apache, Oracle, JSP. My Contact No is 8121-451969.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (12,'Vaishali','Shah','28-FEB-1981','F','M','Makanji Mansion, Mumbai','91-022-31040094',50000,'Database Management',10,2,6,'I am comfortable working with Word, Powerpoint, Excel. My Phone No is 7131.461962.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (13,'Keyur','Kapoor','14-OCT-1984','M','U','Sita Sadan, Delhi','91-022-27740094',20000,'Testing',8,4,0,'I am comfortable working with only Word. My Phone No is 3131.987344.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (14,'Amit','Haria','11-NOV-1972','M','M','Krishna Kunj, Mumbai','91-022-34340094',20000,'Programming',7,2,1,'Contact me at 2671.978344.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (15,'Kirti','Benegal','28-FEB-1959','M','M','Thakur Complex, Mumbai','91-022-37640094',12122,'Sales',3,1,17,'Call me at 3322.554433.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (16,'Ashwin','Dedhia','20-SEP-1965','M','U','Upendra Nagar, Mumbai','91-022-40940094',12321,'HR',4,3,3,'One year experience in Word. Contact No 5544.988765.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (17,'Manali','Dodhia','23-JUN-1980','M','M','Gokul Vihar, Mumbai','91-022-44240094',12344,'Accounts',2,3,2,'One year experience in Excel. Contact No 9844.983335.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (18,'Madhuri','Doshi','12-DEC-1987','F','U','Prakash Towers, Mumbai','91-022-47540094',45000,'Auditing',9,7,5,'One year experience in Word. ',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (19,'Katrina','Mayekar','22-NOV-1956','M','U','Advani Apts, Mumbai',null,2500,'Peon',1,3,30,'One year experience in Word. Contact No 6644.983335.',null,null);
Insert into OLDEMPLOYEES (EMPLOYEENO,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,MARITALSTATUS,ADDRESS,CONTACTNO,SALARY,DESIGNATION,MANAGERNO,DEPTNO,NOOFLEAVES,ABOUTME,USERNAME,PASSWORD) values (20,'Gopi','Kapoor','04-APR-1962','M','U','Tilak Nagar, Mumbai','91-022-54140094',1200,'Peon',1,5,10,'One year experience in Word. ',null,null);
---------------------------------------------------
--   END DATA FOR TABLE OLDEMPLOYEES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPLOYEESDEPT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLOYEESDEPT
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (8,'Meenal','Doshi','49500','Auditing','9','7','IT Department','12-DEC-1987','91-022-47540094',null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (5,'Abhishek','Benegal','13334.2','Sales','3','1','Sales Department','28-FEB-1959','91-022-37640094',null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (11,'Stuti','Khanna','31207','Consultant','2','1','Sales Department','08-JUN-1984',null,null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (2,'Vaishali','Shah','55000','Database Management','10','2','HR Department','09-FEB-1981','91-022-31040094','liSh2','VaSh00');
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (4,'Amit','Haria','22000','Programming','7','2','HR Department','11-NOV-1972','91-022-34340094',null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (6,'Chetan','Dedhia','13553.1','HR','4','3','Technical Department','20-SEP-1965','91-022-40940094',null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (7,'Narendra','Dodhia','13578.4','Accounts','2','3','Technical Department','23-JUN-1980','91-022-44240094',null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (9,'Anil','Mayekar','2750','Peon','1','3','Technical Department','22-NOV-1956',null,null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (1,'Sharanam','Shah','82500','Technical Writing',null,'4','Purchase Department','03-JAN-1981','91-022-24440094','amSh1','ShSh00');
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (3,'Keyur','Kapoor','22000','Testing','8','4','Purchase Department','14-OCT-1984','91-022-27740094',null,null);
Insert into EMPLOYEESDEPT (EMPLOYEENO,FIRSTNAME,LASTNAME,SALARY,DESIGNATION,MANAGERNO,DEPTNO,DEPARTMENTNAME,DATEOFBIRTH,CONTACTNO,USERNAME,PASSWORD) values (10,'Chaitanya','Kapoor','1320','Peon','1','5','Customer Care Department','04-APR-1962','91-022-54140094',null,null);
---------------------------------------------------
--   END DATA FOR TABLE EMPLOYEESDEPT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPLEAVERECORDS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLEAVERECORDS
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (1,'Jan',2006,2,4);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (2,'Jan',2007,2,2);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (3,'Feb',2008,2,4);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (4,'Mar',2007,2,2);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (1,'Apr',2006,2,4);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (5,'May',2007,2,1);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (6,'Jun',2007,2,3);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (2,'Sep',2006,2,2);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (5,'Aug',2006,3,1);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (6,'Sep',2007,3,3);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (9,'Oct',2007,3,3);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (4,'Jan',2008,9,2);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (3,'Feb',2008,3,4);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (5,'Mar',2008,3,1);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (7,'Apr',2008,3,3);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (9,'May',2008,2,3);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (10,'Jun',2008,2,5);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (10,'Jul',2008,2,5);
Insert into EMPLEAVERECORDS (EMPLOYEENO,MONTH,YEAR,NOOFLEAVES,DEPTNO) values (2,'Aug',2008,2,2);
---------------------------------------------------
--   END DATA FOR TABLE EMPLEAVERECORDS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PRODUCTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PRODUCTS
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('TV','Black','LG','LCD',2008,15000);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('LCD','White','LG','XCanvas',2008,50000);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('Refrigerator','Silver gray','Godrej','350 liters',2006,12000);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('DVD Player','White','Philips','XY123',2007,4000);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('AC','Gray','LG','Half Ton',2008,13000);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('A4 Papers','White','Canon','Executive Bonds',2004,350);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('Tables','Brown','Durion','Glass',2007,700);
Insert into PRODUCTS (PRODUCTNAME,PRODUCTCOLOR,PRODUCTMAKE,PRODUCTMODEL,MANUFACTURINGYEAR,PRICE) values ('Chairs','Brown','Durion','Foldable',2005,700);
---------------------------------------------------
--   END DATA FOR TABLE PRODUCTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PRODUCTSA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PRODUCTSA
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('TV',40000,'Black',35,'LG');
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('Refrigerator',25000,'Grey',10,'Godrej');
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('DVD Player',10000,'Silver Gray',25,'Videocon');
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('Microwave',6000,'White',45,'Electrolux');
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('Juicer',4500,'White',35,'Nova');
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('AC',11000,'White',10,'Voltas');
Insert into PRODUCTSA (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('VCD',3000,'Silver',35,'LG');
---------------------------------------------------
--   END DATA FOR TABLE PRODUCTSA
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PRODUCTSB
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PRODUCTSB
Insert into PRODUCTSB (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('TV',40000,'Black',15,'LG');
Insert into PRODUCTSB (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('AC',11000,'White',10,'Voltas');
Insert into PRODUCTSB (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('VCD',3000,'Silver',35,'LG');
Insert into PRODUCTSB (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('Microwave',6000,'White',15,'Electrolux');
Insert into PRODUCTSB (PRODUCTNAME,COST,COLOR,QTYINHAND,MANUFACTURER) values ('Juicer',4500,'White',30,'Nova');
---------------------------------------------------
--   END DATA FOR TABLE PRODUCTSB
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ORDERMASTER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ORDERMASTER
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10001',to_timestamp('2007-05-30','YYYY-MM-DD'),'P0003',50,100,75,'F ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10002',to_timestamp('2007-06-03','YYYY-MM-DD'),'P0002',35,50,80,'F ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10003',to_timestamp('2007-06-03','YYYY-MM-DD'),'P0001',120,20,150,'P ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10004',to_timestamp('2007-06-15','YYYY-MM-DD'),'P0005',450,2,700,'F ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10005',to_timestamp('2007-06-30','YYYY-MM-DD'),'P0005',450,10,700,'P ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10006',to_timestamp('2007-06-29','YYYY-MM-DD'),'P0004',145,15,200,'P ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10007',to_timestamp('2007-06-20','YYYY-MM-DD'),'P0004',145,10,200,'P ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10008',to_timestamp('2007-07-03','YYYY-MM-DD'),'P0002',35,15,80,'F ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10009',to_timestamp('2007-08-09','YYYY-MM-DD'),'P0002',35,20,80,'F ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10010',to_timestamp('2007-08-09','YYYY-MM-DD'),'P0001',120,10,150,'F ');
Insert into ORDERMASTER (ORDERNO,ORDERDATE,PRODUCTNO,COSTPRICE,QTY,SELLPRICE,ORDERSTATUS) values ('O10011',to_timestamp('2007-08-09','YYYY-MM-DD'),'P0005',450,5,700,'P ');
---------------------------------------------------
--   END DATA FOR TABLE ORDERMASTER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PURCHASEORDERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PURCHASEORDERS
Insert into PURCHASEORDERS (RECEIPTDATE,PURCHASEORDERXML) values (to_timestamp('2008-05-11 02:05:07.0','YYYY-MM-DD HH.MI.SS.FF AM'),'<?xml version="1.0"?><POrder><OrderNo>1</OrderNo><OrderDate>2006-01-22</OrderDate><CustomerName>Sharanam Shah</CustomerName><CustomerAddress>Larsen Mansion, Andheri, Mumbai 400016. 	</CustomerAddress><CustomerContactNo>91-022-23344556</CustomerContactNo><ProductDetails>  <Product>    <ProductNo>1</ProductNo>    <ProductName>PHP 5.1 For Professionals</ProductName>    <Qty>35</Qty>  </Product>  <Product>    <ProductNo>2</ProductNo>    <ProductName>Java Server Pages For Professionals</ProductName>    <Qty>40</Qty>  </Product>  <Product>    <ProductNo>3</ProductNo>    <ProductName>MySQL  For Professionals</ProductName>    <Qty>32</Qty>  </Product>  <Product>    <ProductNo>4</ProductNo>    <ProductName>Ajax For Beginners</ProductName>    <Qty>56</Qty>  </Product></ProductDetails></POrder>');
---------------------------------------------------
--   END DATA FOR TABLE PURCHASEORDERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ORDERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ORDERS
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (1,to_timestamp('2008-01-03','YYYY-MM-DD'),21,'69350.0','Confirmed','MU/0203');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (2,to_timestamp('2008-02-09','YYYY-MM-DD'),22,'5750.0','Void','DL/0203');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (3,to_timestamp('2007-10-14','YYYY-MM-DD'),21,'14750.0','Confirmed','KL/0203');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (4,to_timestamp('2007-11-11','YYYY-MM-DD'),23,'28400.0','Void','MD/0203');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (5,to_timestamp('2007-02-28','YYYY-MM-DD'),24,'66350.0','Confirmed','DL/0303');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (8,to_timestamp('2008-02-08','YYYY-MM-DD'),25,'Infinity','Void','MD/0203');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (6,to_timestamp('2008-12-09','YYYY-MM-DD'),25,'15000.0','Authorization Failed','KL/0403');
Insert into ORDERS (ORDERNO,ORDERDATE,CUSTOMERNO,ORDERAMOUNT,ORDERSTATUS,ORDERCODE) values (7,to_timestamp('2008-12-09','YYYY-MM-DD'),25,'NaN','Authorization Failed','MD/0503');
---------------------------------------------------
--   END DATA FOR TABLE ORDERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ORDERDETAILS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ORDERDETAILS
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (1,to_timestamp('2008-01-03','YYYY-MM-DD'),'A4 Papers',350,10,6,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (2,to_timestamp('2008-02-09','YYYY-MM-DD'),'Tables',700,100,5,'Vaishali Sharanam Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (3,to_timestamp('2007-10-14','YYYY-MM-DD'),'AC',13000,2,4,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (4,to_timestamp('2007-11-11','YYYY-MM-DD'),'Refrigerator',12000,4,3,'Anil Mayekar');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (1,to_timestamp('2008-01-03','YYYY-MM-DD'),'LCD',50000,10,3,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (2,to_timestamp('2008-02-09','YYYY-MM-DD'),'Chairs',700,10,1,'Vaishali Sharanam Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (3,to_timestamp('2007-10-14','YYYY-MM-DD'),'A4 Papers',350,2,5,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (4,to_timestamp('2007-11-11','YYYY-MM-DD'),'Tables',700,3,2,'Anil Mayekar');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (5,to_timestamp('2007-02-28','YYYY-MM-DD'),'DVD Player',4000,50,1,'Hansel');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (1,to_timestamp('2008-01-03','YYYY-MM-DD'),'TV',15000,5,7,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (2,to_timestamp('2008-02-09','YYYY-MM-DD'),'DVD Player',4000,1,4,'Vaishali Sharanam Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (3,to_timestamp('2007-10-14','YYYY-MM-DD'),'Chairs',700,2,10,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (4,to_timestamp('2007-11-11','YYYY-MM-DD'),'Chairs',700,15,9,'Anil Mayekar');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (5,to_timestamp('2007-02-28','YYYY-MM-DD'),'A4 Papers',350,3,1,'Hansel');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (5,to_timestamp('2007-02-28','YYYY-MM-DD'),'LCD',50000,1,2,'Hansel');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (4,to_timestamp('2007-11-11','YYYY-MM-DD'),'TV',15000,4,2,'Anil Mayekar');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (3,to_timestamp('2007-10-14','YYYY-MM-DD'),'Tables',700,3,5,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (2,to_timestamp('2008-02-09','YYYY-MM-DD'),'A4 Papers',350,3,6,'Vaishali Sharanam Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (1,to_timestamp('2008-01-03','YYYY-MM-DD'),'DVD Player',4000,1,9,'Sharanam Chaitanya Shah');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (5,to_timestamp('2007-02-28','YYYY-MM-DD'),'Refrigerator',12000,1,5,'Hansel');
Insert into ORDERDETAILS (ORDERNO,ORDERDATE,PRODUCTNAME,COST,QTY,EMPLOYEENO,CUSTOMERNAME) values (6,to_timestamp('2008-12-09','YYYY-MM-DD'),'TV',15000,1,1,'Chaitanya Kantilal Shah');
---------------------------------------------------
--   END DATA FOR TABLE ORDERDETAILS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE INVOICES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INVOICES
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV1/03012008/21',to_timestamp('2008-01-03','YYYY-MM-DD'),'582500.0',21,1);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV2/06012008/22',to_timestamp('2008-01-06','YYYY-MM-DD'),'80050.0',22,2);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV3/04022008/21',to_timestamp('2008-02-04','YYYY-MM-DD'),'29800.0',21,3);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV4/07022008/23',to_timestamp('2008-02-07','YYYY-MM-DD'),'117600.0',23,4);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV5/05012008/24',to_timestamp('2008-01-05','YYYY-MM-DD'),'263050.0',24,5);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV6/08012008/25',to_timestamp('2008-01-08','YYYY-MM-DD'),'15000.0',25,6);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV7/06012008/25',to_timestamp('2008-01-06','YYYY-MM-DD'),'NaN',25,7);
---------------------------------------------------
--   END DATA FOR TABLE INVOICES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DISCOUNTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DISCOUNTS
Insert into DISCOUNTS (DISCOUNT) values (5);
Insert into DISCOUNTS (DISCOUNT) values (10);
Insert into DISCOUNTS (DISCOUNT) values (15);
---------------------------------------------------
--   END DATA FOR TABLE DISCOUNTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SPENDINGCATEGORY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SPENDINGCATEGORY
Insert into SPENDINGCATEGORY (MINAMOUNT,MAXAMOUNT,CATEGORY) values (3000,15000,'Spent A Lot');
Insert into SPENDINGCATEGORY (MINAMOUNT,MAXAMOUNT,CATEGORY) values (100,500,'Hardly Spent');
Insert into SPENDINGCATEGORY (MINAMOUNT,MAXAMOUNT,CATEGORY) values (500,3000,'Optimistically spent');
---------------------------------------------------
--   END DATA FOR TABLE SPENDINGCATEGORY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ACCOUNTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ACCOUNTS
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (1,'Sharanam',to_timestamp('2007-05-23','YYYY-MM-DD'),'SB',13558.9);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (2,'Vaishali',to_timestamp('2005-02-05','YYYY-MM-DD'),'SB',5000);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (3,'Gita',to_timestamp('2006-06-08','YYYY-MM-DD'),'SB',2375.89);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (6,'Michel',to_timestamp('2008-03-29','YYYY-MM-DD'),'CA',3000);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (5,'Micheal',to_timestamp('2003-10-20','YYYY-MM-DD'),'SB',4000);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (4,'Geeta',to_timestamp('2005-01-01','YYYY-MM-DD'),'CA',46892.08);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (12,'Puja',to_timestamp('2005-02-20','YYYY-MM-DD'),'SB',4500);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (11,'Pooja',to_timestamp('2003-07-07','YYYY-MM-DD'),'CA',123890);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (10,'Dipa',to_timestamp('2007-05-23','YYYY-MM-DD'),'SB',1245);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (9,'Deepa',to_timestamp('2006-06-08','YYYY-MM-DD'),'SB',1000);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (8,'Sita',to_timestamp('2003-10-20','YYYY-MM-DD'),'SB',1234);
Insert into ACCOUNTS (ACCOUNTNO,ACCOUNTHOLDERNAME,ACCOUNTOPENINGDATE,ACCOUNTTYPE,CURRENTBALANCE) values (7,'Seeta',to_timestamp('2003-07-07','YYYY-MM-DD'),'SB',3000);
---------------------------------------------------
--   END DATA FOR TABLE ACCOUNTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MOVIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MOVIES
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (5,'Rush Hour',300,'Comedy','Stevan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (4,'Evil Death',250,'Horror','Mr. Evil');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (3,'Shootout At Lokhanwala',200,'Action','Ganpat');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (2,'DDLJ',350,'Romance','Aditya Chopra');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (1,'Titanic',400,'Romance','Stevan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (7,'Speed',500,'Action','Keenu');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (6,'Golmaal',450,'Comedy','Ajay Devgan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (11,'All about Science',500,'Scientific','Mr. Evil');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (10,'K3G',250,'Romance','Roshan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (9,'Koi Mil Gaya',500,'Scientific','Roshan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (8,'Blade Trinity',250,'Action','Keenu');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (12,'The Fast and the Furious',450,'Action','Stevan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (13,'Terminator',200,'Action','Stevan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (14,'U Me Aur Hum',600,'Romance','Ajay Devgan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (15,'Taare Zameen Par',320,'Scientific','Aamir Khan');
Insert into MOVIES (MOVIENO,MOVIENAME,PRICE,CATEGORY,DIRECTOR) values (16,'Swadesh',120,'Scientific','Ashitosh');
---------------------------------------------------
--   END DATA FOR TABLE MOVIES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RENTALS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RENTALS
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (3,to_timestamp('2007-12-20','YYYY-MM-DD'),8,'Stuti',to_timestamp('2007-12-22','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (4,to_timestamp('2007-11-20','YYYY-MM-DD'),10,'Chaitanya',to_timestamp('2007-11-22','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (5,to_timestamp('2007-06-02','YYYY-MM-DD'),2,'Vaishali',to_timestamp('2007-06-04','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (6,to_timestamp('2007-02-12','YYYY-MM-DD'),4,'Manali',to_timestamp('2007-02-14','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (7,to_timestamp('2007-01-20','YYYY-MM-DD'),5,'Pramila',to_timestamp('2007-01-25','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (8,to_timestamp('2008-01-20','YYYY-MM-DD'),4,'Narendra',to_timestamp('2008-01-22','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (9,to_timestamp('2007-12-24','YYYY-MM-DD'),7,'Sharanam',to_timestamp('2007-12-30','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (10,to_timestamp('2008-03-08','YYYY-MM-DD'),9,'Stuti',to_timestamp('2008-03-22','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (11,to_timestamp('2007-12-20','YYYY-MM-DD'),2,'Meenal',to_timestamp('2007-12-23','YYYY-MM_DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (12,to_timestamp('2007-07-20','YYYY-MM-DD'),3,'Aarti',to_timestamp('2007-07-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (13,to_timestamp('2007-12-06','YYYY-MM-DD'),1,'Narendra',to_timestamp('2007-12-10','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (14,to_timestamp('2007-05-20','YYYY-MM-DD'),1,'Chaitanya',to_timestamp('2007-05-24','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (15,to_timestamp('2007-12-30','YYYY-MM-DD'),11,'Meenal',to_timestamp('2008-01-03','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (16,to_timestamp('2007-07-20','YYYY-MM-DD'),9,'Meenal',to_timestamp('2007-07-27','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (2,to_timestamp('2008-09-24','YYYY-MM-DD'),8,'Vaishali',to_timestamp('2008-09-29','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (1,to_timestamp('2008-08-09','YYYY-MM-DD'),10,'Sharanam',to_timestamp('2008-08-11','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (17,to_timestamp('2007-12-20','YYYY-MM-DD'),8,'Stuti',to_timestamp('2007-12-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (18,to_timestamp('2007-11-20','YYYY-MM-DD'),10,'Chaitanya',to_timestamp('2007-11-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (19,to_timestamp('2007-06-02','YYYY-MM-DD'),2,'Vaishali',to_timestamp('2007-06-04','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (20,to_timestamp('2007-02-12','YYYY-MM-DD'),4,'Manali',to_timestamp('2007-02-14','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (21,to_timestamp('2007-01-20','YYYY-MM-DD'),14,'Pramila',to_timestamp('2007-01-25','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (22,to_timestamp('2008-01-20','YYYY-MM-DD'),4,'Narendra',to_timestamp('2008-01-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (23,to_timestamp('2007-12-24','YYYY-MM-DD'),7,'Sharanam',to_timestamp('2007-12-30','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (24,to_timestamp('2008-03-08','YYYY-MM-DD'),9,'Stuti',to_timestamp('2008-03-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (25,to_timestamp('2007-12-20','YYYY-MM-DD'),2,'Meenal',to_timestamp('2007-12-23','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (26,to_timestamp('2007-07-20','YYYY-MM-DD'),3,'Aarti',to_timestamp('2007-07-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (27,to_timestamp('2007-12-06','YYYY-MM-DD'),10,'Narendra',to_timestamp('2007-12-10','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (28,to_timestamp('2007-05-20','YYYY-MM-DD'),11,'Chaitanya',to_timestamp('2007-05-24','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (29,to_timestamp('2007-12-30','YYYY-MM-DD'),12,'Meenal',to_timestamp('2008-01-03','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (30,to_timestamp('2007-07-20','YYYY-MM-DD'),15,'Meenal',to_timestamp('2007-07-27','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (31,to_timestamp('2008-09-24','YYYY-MM-DD'),14,'Vaishali',to_timestamp('2008-09-29','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (32,to_timestamp('2008-08-09','YYYY-MM-DD'),6,'Sharanam',to_timestamp('2008-08-11','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (33,to_timestamp('2007-12-20','YYYY-MM-DD'),16,'Stuti',to_timestamp('2007-12-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (34,to_timestamp('2007-11-20','YYYY-MM-DD'),15,'Chaitanya',to_timestamp('2007-11-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (35,to_timestamp('2007-06-02','YYYY-MM-DD'),12,'Vaishali',to_timestamp('2007-06-04','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (36,to_timestamp('2007-02-12','YYYY-MM-DD'),14,'Manali',to_timestamp('2007-02-14','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (37,to_timestamp('2007-01-20','YYYY-MM-DD'),13,'Pramila',to_timestamp('2007-01-25','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (38,to_timestamp('2008-01-20','YYYY-MM-DD'),10,'Narendra',to_timestamp('2008-01-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (39,to_timestamp('2007-12-24','YYYY-MM-DD'),15,'Sharanam',to_timestamp('2007-12-30','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (40,to_timestamp('2008-03-08','YYYY-MM-DD'),14,'Stuti',to_timestamp('2008-03-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (41,to_timestamp('2007-12-20','YYYY-MM-DD'),13,'Meenal',to_timestamp('2007-12-23','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (42,to_timestamp('2007-07-20','YYYY-MM-DD'),3,'Aarti',to_timestamp('2007-07-22','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (43,to_timestamp('2007-12-06','YYYY-MM-DD'),1,'Narendra',to_timestamp('2007-12-10','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (44,to_timestamp('2007-05-20','YYYY-MM-DD'),1,'Chaitanya',to_timestamp('2007-05-24','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (45,to_timestamp('2007-12-30','YYYY-MM-DD'),11,'Meenal',to_timestamp('2008-01-03','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (46,to_timestamp('2007-07-20','YYYY-MM-DD'),9,'Meenal',to_timestamp('2007-07-27','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (47,to_timestamp('2008-09-24','YYYY-MM-DD'),8,'Vaishali',to_timestamp('2008-09-29','YYYY-MM-DD'));
Insert into RENTALS (RENTNO,RENTALDATE,MOVIENO,MEMBERNAME,RETURNDATE) values (48,to_timestamp('2008-08-09','YYYY-MM-DD'),10,'Sharanam',to_timestamp('2008-08-11','YYYY-MM-DD'));
---------------------------------------------------
--   END DATA FOR TABLE RENTALS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SPECIALTIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SPECIALTIES
Insert into SPECIALTIES (SPECIALTYNO,SPECIALTY) values (1,'Oracle');
Insert into SPECIALTIES (SPECIALTYNO,SPECIALTY) values (2,'Ajax');
Insert into SPECIALTIES (SPECIALTYNO,SPECIALTY) values (3,'PHP');
Insert into SPECIALTIES (SPECIALTYNO,SPECIALTY) values (4,'MySQL');
---------------------------------------------------
--   END DATA FOR TABLE SPECIALTIES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE AUTHORS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AUTHORS
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (1,'Sharanam Shah',27385653,1);
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (2,'Hansel Colaco',74321547,3);
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (3,'Vaishali Shah',22356753,4);
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (4,'Chaitanya Naik',21324764,2);
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (5,'Ashwini Kolapure',27341939,2);
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (6,'Daniel Joshua',35793857,1);
Insert into AUTHORS (AUTHORNO,AUTHORNAME,CONTACTNO,SPECIALTYNO) values (7,'Anil Vaidya',98758362,1);
---------------------------------------------------
--   END DATA FOR TABLE AUTHORS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PUBLISHERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PUBLISHERS
Insert into PUBLISHERS (PUBLISHERNO,PUBLISHERNAME,ADDRESS) values (1,'Apress','Berkeley, CA 94710');
Insert into PUBLISHERS (PUBLISHERNO,PUBLISHERNAME,ADDRESS) values (2,'Wrox','Indianapolis, IN 46256');
Insert into PUBLISHERS (PUBLISHERNO,PUBLISHERNAME,ADDRESS) values (3,'SPD','Vashi, Mumbai 287502');
Insert into PUBLISHERS (PUBLISHERNO,PUBLISHERNAME,ADDRESS) values (4,'BpB','Darya Gunj, Delhi 73945');
Insert into PUBLISHERS (PUBLISHERNO,PUBLISHERNAME,ADDRESS) values (5,'Prentice Hall','Boston, MA 02116');
---------------------------------------------------
--   END DATA FOR TABLE PUBLISHERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE BOOKS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BOOKS
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('808-97365-80',6,'Oracle SQL and SQL*Plus',650,1200,17,1,'Database');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('978-34-13394-1',3,'Professional MySQL',550,900,16,4,'Database');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('21-783592-1',4,'PHP Tips And Tricks',600,700,10,3,'Server Side Scripting');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('1-34523-880',2,'Ajax With JSF',750,550,8,2,'Server Side Scripting');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('783-983242-23',1,'Oracle For Professionals',450,890,43,3,'Database');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('234-82911-1',1,'Oracle and Data Warehouse and Data Mining',250,450,12,3,'Database');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('90-987532-234',1,'Professional Projects On PHP And Oracle',400,800,19,1,'Project');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('2364-90452',3,'Database Concepts',300,600,27,2,'Database');
Insert into BOOKS (ISBN,AUTHORNO,BOOKNAME,COST,NOOFPAGES,NOOFCHAPTERS,PUBLISHERNO,CATEGORY) values ('978-0-470-13394-1',5,'Mastering phpMyAdmin',700,1100,13,5,'Database');
---------------------------------------------------
--   END DATA FOR TABLE BOOKS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE BOOKSALES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BOOKSALES
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('PHP 5.1','Sharanam',2005,2111,1477700);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('MySQL 5','Vaishali',2005,1212,848400);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Oracle','Sharanam',2005,2323,1626100);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Apache','Sharanam',2005,3434,2403800);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Datawarehouse','Vaishali',2005,4545,3181500);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Linux','Ivan',2005,5656,3959200);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Datamining','Ivan',2005,4332,3032400);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('PHP 5.1','Sharanam',2006,3123,2186100);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('MySQL 5','Vaishali',2006,4321,3024700);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Oracle','Sharanam',2006,5436,3805200);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Apache','Sharanam',2006,5400,3780000);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Datawarehouse','Vaishali',2006,1200,840000);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Linux','Ivan',2006,2100,1470000);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Datamining','Ivan',2006,1300,910000);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('PHP 5.1','Sharanam',2007,2122,1485400);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('MySQL 5','Vaishali',2007,2394,1675800);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Oracle','Sharanam',2007,2396,1677200);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Apache','Sharanam',2007,6574,4601800);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Datawarehouse','Vaishali',2007,1234,863800);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Linux','Ivan',2007,2123,1486100);
Insert into BOOKSALES (BOOKNAME,AUTHORNAME,YEAR,QTYSOLD,REVENUEEARNED) values ('Datamining','Ivan',2007,1212,848400);
---------------------------------------------------
--   END DATA FOR TABLE BOOKSALES
---------------------------------------------------