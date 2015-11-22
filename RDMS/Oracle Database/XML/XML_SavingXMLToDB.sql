--creating the table strucutre with XMLDataType
CREATE TABLE customers(
receiptDate DATE,
customerXML XMLTYPE);

--get the privilage for creating the directory from dba
grant CREATE ANY DIRECTORY to HR;

--Create a directly which those xml file are allowed
CREATE OR REPLACE DIRECTORY "CustXML" as '/MyData/Customer';

---get the customers.xml
--save in the locations like C:/mydata/customer

--inserting the Customer.xml into customers table
INSERT INTO customers (receiptDate,customerXML) VALUES 
(SYSDATE,XMLType(BFILENAME('CustXML','customers.xml'),
              NLS_CHARSET_ID('ÁL32UTF8')));             
    