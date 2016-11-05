--get the csv file save as employees.csv

--create the table 
Create table employees(
employee_no number(10),
first_name varchar2(50),
last_name varchar2(50),
salary number(12,2),
dept_no number(10),
gender varchar2(10)
);

--preparing the load file and save it has employees.ctl
LOAD DATA
INFILE '/Mydata/employees.csv'
BADFILE '/Mydata/employees.bad'
DISCARDFILE '/Mydata/employees.dsc'
INSERT INTO Table employees
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' TRAILING
NULLCOLS(employee_no,first_name,last_name,salary,dept_no,gender)

--locate the path of the ctl file and invoke the sql*loader
sqlldr userid=ganesh/<password> control=employees.ctl log=employees.log

