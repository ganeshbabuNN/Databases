select * from bankmaster;
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

 insert into BankMaster(AccountNo,FirstName,LastName,BuildingName,Road,Area,City,pincode,Country,ContactNo,Status) values(1,'Ganesh','babu','Decan Building','M G Road','vivekanada road','bangalore','562114','India','966482922','M');
 insert into BankMaster values(2,'vedha','kumar','Decan Building','Missorie','US','bangalore','562114','USA','966482922','M');
 insert into BankMaster values(3,'vedha','kumar','Decan Building','Missorie','US','bangalore','562114','USA','966482922','M');

drop table Status;
create table Status(
accountno number(10),
status char(3));

insert into status values (1,'Yes');
insert into status values (2,'Yes');
insert into status values (3,'No');

---DELETE 
delete from bankmaster
where exists ( select accountno from status
where status.accountno=bankmaster.accountno and
 status.accountno=3);
 
 select * from bankmaster;