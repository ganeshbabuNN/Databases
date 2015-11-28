desc employees;

--for type employees
CREATE OR REPLACE TYPE Typemployees AS OBJECT (
employeeID NUMBER(6),
firstName VARCHAR2(20), 
lastName VARCHAR2(25), 
email VARCHAR2(25), 
phoneNumber VARCHAR2(20),
hireDate DATE,
jobID VARCHAR2(10),
salary NUMBER(8,2), 
CommissionPCT NUMBER(2,2),
ManagerID NUMBER(6),    
departmentID NUMBER(4)
);
/

--for departments
desc Departments;

--for type deparment
CREATE OR REPLACE TYPE TypDepartments AS OBJECT (
departmentID NUMBER(4),
deparmentName VARCHAR2(30), 
ManagerID NUMBER(6), 
locationID NUMBER(4),
employeeInfo Typemployees     ----nested objects
);
/

desc locations;

--for type deparment
CREATE OR REPLACE TYPE Typlocations AS OBJECT (
locationID NUMBER(4),
streetAddress VARCHAR2(40), 
postalCode VARCHAR2(12), 
city VARCHAR2(30),
stateProvince VARCHAR2(25),
countryID char(2),
employeeInfo Typemployees    ----nested objects
);
/


--- book store example
/* Create an object named ContactDetails */
	CREATE OR REPLACE TYPE typContactDetails AS OBJECT(
		Address1 Varchar2(50),
		Address2 Varchar2(50),
		City Varchar2(15),
		State Varchar2(25),
		Pincode Number(10),
		Country Varchar2(20),
		ContactNo Varchar2(25));
	/

/* Create an object named Author */
	CREATE TYPE typAuthor AS OBJECT(
		AuthorName Varchar2(50),
		ContactDetails typContactDetails);
	/

/* Create an object named Publisher */
	CREATE TYPE typPublisher AS OBJECT (
		PublisherName Varchar2(50),
		ContactDetails typContactDetails);
	/