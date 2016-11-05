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

insert into BankMaster values(2,'vedha','kumar','Decan Building','Missorie','US','bangalore','562114','USA','966482922','M');
insert into BankMaster AccountNo,FirstName,LastName,BuildingName,Road,Area,City,pincode,Country,ContactNo,Status) values(1,'Ganesh','babu','Decan Building','M G Road','vivekanada road','bangalore','562114','India','966482922','M');
insert into bankmaster(accountno,firstname,lastname,contactno) values(3,'kalayani','g',339393);