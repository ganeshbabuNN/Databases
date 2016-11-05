--get the csv file save as employees.txt

--create the table 
Create table employees(
employee_no number(10),
first_name varchar2(50),
last_name varchar2(50),
salary number(12,2),
dept_no number(10),
gender varchar2(10)
);

--preparing the load file and save it has employeesfixedlength.ctl
LOAD DATA
INFILE '/Mydata/employees.txt'
INTO Table employees
(employee_no POSITION(01:09) INTEGER EXTERNAL,
first_name POSITION(10:30) CHAR,
last_name POSITION(29:44) CHAR,
salary POSITION(45:54) INTEGER EXTERNAL,
dept_no POSITION(55:59) INTEGER EXTERNAL,
gender POSITION(1:10) CHAR
)

--locate the path of the ctl file and invoke the sql*loader
sqlldr userid=ganesh/<password> control=employeesfixedlength.ctl log=employeesfixedlength.log direct=y

