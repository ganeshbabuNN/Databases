drop table Itemp; ---IT Employees
create table Itemp(
employeeid number(10),
firstname varchar2(30),
lastname varchar2(30)
);

drop table clerkemp; ---CLERK Employees
create table clerkemp(
employeeid number(10),
firstname varchar2(30),
lastname varchar2(30)
);

--Inser count of  IT employess and CLERK employess into Itemp and clerkemp
INSERT FIRST
WHEN job_id ='IT_PROG'
  THEN INTO Itemp VALUES(employeeid,firstname,lastname)
WHEN job_id ='PU_CLERK'
  THEN INTO clerkemp VALUES(employeeid,firstname,lastname)
WHEN job_id ='SH_CLERK'
  THEN INTO clerkemp VALUES(employeeid,firstname,lastname)
WHEN job_id ='ST_CLERK'
  THEN INTO clerkemp VALUES(employeeid,firstname,lastname)  
SELECT DISTINCT
employee_id employeeid,
first_name firstname,
last_name lastname,
job_id
from employees;

select * from Itemp;
select * from clerkemp;
delete itemp;
delete clerkemp;

select distinct job_id ,count(employee_id) from employees 
where job_id like '%CLERK%'
group by job_id;

/*
-THE VALUES clause can only contains columns referenced in the SELECT satement in subquery
-if the VALUES clause is not included, the SELECT statement in the subquery will defined the values to be inserted
-the INSERT FIRST will execute the FIRST INTO clause that matches on the experssion, it will, then skip all the following WHEN Clause
-the same table can be specified fo rmultiple target INTO Clause
-can have upto 127 WHEN Clauses
*/