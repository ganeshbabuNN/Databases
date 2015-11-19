CREATE Table BankMaster(
AccountNo number(10) PRIMARY KEY,
FirstName varchar2(25) NOT NULL,
LastName Varchar2(25) NOT NULL,
BuildingName Varchar2(25),
Road varchar2(25),
Area varchar2(25),
City Varchar2(25),
pincode Number(10),
Country varchar2(25) Default 'India',
ContactNo Number(15) NOT NULL,
Status char(1) DEFAULT 'A');

-In the above code spec, sincel all the table columns belong to a single record, the columns definitions are enclosed within parenthesis.
