LOAD DATA
INFILE '/Mydata/employees.csv'
BADFILE '/Mydata/employees.bad'
DISCARDFILE '/Mydata/employees.dsc'
INSERT INTO Table employees
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' TRAILING
NULLCOLS(employee_no,first_name,last_name,salary,dept_no,gender)