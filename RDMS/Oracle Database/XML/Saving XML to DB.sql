--Ofen data is received in XML format
--the supplier need to vie and understand the order details to deliver the ordered product to the respective customers
-to Query and process such data , oracle allows storing it as a colum value in the database table.


--create the table
CREATE TABLE customers(
receiptDate DATE,
customerXML XMLTYPE);

*Oracle provides XML Type as a built-in data type that allows storing XML Data.
*by default XMLTYPE column stores the XML data as text in a CLOB[Character large Objects]

--Create a directly which those xml file are allowed
CREATE OR REPLACE DIRECTORY "CustXML" as '/MyData/Customer';
*the user issuing this command need sufficient privileges to do so
*CustXML is the directory Name.

-insert that XML file to the customer table
INSERT INTO customer (receiptDate,customerXML) VALUES 
(SYSDATE,XMLType(BFILENAME('CustXML',çustomer.xml',NLS_CHARSET_ID('ÁL32UTF8')));

*XMLType() accepts two parameter 
*first parameter pointer to an external file specified using BFILE 
*second paramter is the character set of the XML test in the external file.
*the character set specified is AL32UTF8,which is standard UTF-8 encoding.
* when insert command is issues, oracle reads the XML file content and stores IN DB as CLOB text.


Retriving data from XML DB Schema
==================================

customer.xml
<?xml version="1.0" encoding="UTF-8"?>
<customers>
	<customer cid="C-101" status="Active">
		<cname>Ganesh</cname>
		<email>g@j.com</email>
		<phone>111</phone>
		<city>Blore</city>
	</customer>
	<customer cid="C-102" status="Active">
		<cname>Vedha</cname>
		<email>Ved@j.com</email>
		<phone>3243</phone>
		<city>Blore</city>
	</customer>
	<customer cid="C-103" status="InActive">
		<cname>Baba</cname>
		<email>baba@j.com</email>
		<phone>6756</phone>
		<city>BBBB</city>
	</customer>
</customers>

select * from customers;

select
	EXTRACT(customerXML,'/customers/customer/cname' "Name",
	EXTRACT(customerXML,'/customers/customer/email' "email",
	EXTRACT(customerXML,'/customers/customer/phone' "phone"
from customers


Displaying the product Details
-------------------------------
- // is used to include all the products

select
	EXTRACT(customerXML,'/POrder//ProductDetails') "Name")
from customers

displaying the first product details
------------------------------------

select
	EXTRACT(customerXML,'/POrder//ProductDetails/Product[1]') "Name")
from customers


displaying the those specific product details
---------------------------------------------
Select
	EXTRACT(customerXML,'/POrder//ProductDetails/Product/Product[ProductName="java"]') "Name"
from customers


Conditional evaluations
----------------------
-existsnode function checks if an XML element exists and if it does, returns 1, otherwise return 0.

select 'customer available' as "status" from customers
where existsnode(custXML,'/customers/customer[cname="ganesh"]')=1;