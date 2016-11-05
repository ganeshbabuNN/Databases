CREATE Table EmployeeMaster(
employeeno number(10),
hire_date date,
attendence varchar2(15),
inTime TimeStamp,
OutTime Timestamp);

insert into EmployeeMaster(employeeno,hire_date,attendence,intime,OutTime)
values(1,sysdate,'Present',TimeStamp '2007-01-23 08:30:55.1245',
TimeStamp '2007-01-23 05:08:55.0');
insert into EmployeeMaster(employeeno,hire_date,attendence,intime,OutTime)
values(2,sysdate,'Present',TimeStamp '2007-01-23 09:25:15.548',
TimeStamp '2007-01-23 05:45:25.45');
insert into EmployeeMaster(employeeno,hire_date,attendence,intime,OutTime)
values(3,sysdate,'Absence',TimeStamp '2007-01-23 09:25:15.548',
TimeStamp '2007-01-23 05:45:25.45');
--without timestamp keyword
insert into EmployeeMaster(employeeno,hire_date,attendence,intime,OutTime)
values(4,sysdate,'Absence', '24-apr-18 09:25:15.548',
TimeStamp '2007-01-23 05:45:25.45');


select * from EmployeeMaster;

drop table EmployeeMaster;