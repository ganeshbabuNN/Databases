--table invoices
drop table invoices;
CREATE TABLE "INVOICES" 
("INVOICENO" VARCHAR2(50) NOT NULL ENABLE, 
"INVOICEDATE" DATE, 
"INVOICEAMOUNT" BINARY_FLOAT, 
"CUSTOMERNO" NUMBER(10,0), 
"ORDERNO" NUMBER(10,0)); 

REM INSERTING into INVOICES
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV1/03012008/21',to_timestamp('2008-01-03','YYYY-MM-DD'),'582500.0',21,1);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV2/06012008/22',to_timestamp('2008-01-06','YYYY-MM-DD'),'80050.0',22,2);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV3/04022008/21',to_timestamp('2008-02-04','YYYY-MM-DD'),'29800.0',21,3);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV4/07022008/23',to_timestamp('2008-02-07','YYYY-MM-DD'),'117600.0',23,4);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV5/05012008/24',to_timestamp('2008-01-05','YYYY-MM-DD'),'263050.0',24,5);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV6/08012008/25',to_timestamp('2008-01-08','YYYY-MM-DD'),'15000.0',25,6);
Insert into INVOICES (INVOICENO,INVOICEDATE,INVOICEAMOUNT,CUSTOMERNO,ORDERNO) values ('INV7/06012008/25',to_timestamp('2008-01-06','YYYY-MM-DD'),'NaN',25,7);


select * from invoices;

--get the invoice number,date and customer no only from the invoice column
select REGEXP_SUBSTR(invoiceno,'[^/]+') invoiceNumber,
       REGEXP_SUBSTR(invoiceno,'/[^/]+') invoicedate,
       REGEXP_SUBSTR(invoiceno,'/[^/]+',1,2) customerno
from invoices;

/*
[^/]+- indicates one or more character before a/
/[^/]+',1= indicates one ore more character before a/ before encourtiner a /
/[^/]+',1,2 = indicates one ore more character before a/ before encourtiner a /
The third parameter indicates that the search should begin from the first character and the
forth parameter indicates that the second occurrence of such a pattern should be considered.
*/

