drop table employeemaster;
create table employeemaster(
AccountNo number(10),
FirstName varchar2(23),
LastName varchar2(22),
BuildingName varchar2(20),
Road Varchar2(20),
Area Varchar2(20),
City Varchar2(20),
PinCode Number(20),
Country Varchar2(20),
ContactNo Number(13),
Status Char(1))
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY ExtTables
  ACCESS PARAMETERS(RECORDS DELIMITED BY NEWLINE
    FIELDS TERMINATED BY ',' MISSING FIELD VALUES ARE NULL)
  LOCATION ('ganesh.txt')) -- for multiple data files ('ganesh.txt','ganesh1.txt')
REJECT LIMIT UNLIMITED;

--Querying the tables;
select * from employeemaster;

select accountno,firstname,lastname from employeemaster;
