drop table Hireemp; ---IT Employees
create table Hireemp(
employeeid number(10),
firstname varchar2(30),
lastname varchar2(30)
);

drop table clerkallemp; ---CLERK Employees
create table clerkallemp(
employeeid number(10),
firstname varchar2(30),
lastname varchar2(30)
);

--Insert employees who join less< '10-Mar-03' int Hiremp table and all CLERK employess into clerkallemp
INSERT ALL
WHEN employeeid IN (select employee_id from job_history where start_date < '10-Mar-03')
  THEN INTO Hireemp VALUES(employeeid,firstname,lastname)
WHEN job_id  like '%CLERK%'
  THEN INTO clerkallemp VALUES(employeeid,firstname,lastname) 
SELECT DISTINCT
employee_id employeeid,
first_name firstname,
last_name lastname,
job_id
from employees;

select * from Hireemp;
select * from clerkallemp;
drop table Hireemp;
drop table clerkallemp;

select * from employees;

/*
-THE VALUES clause can only contains columns referenced in the SELECT satement in subquery
-if the VALUES clause is not included, the SELECT statement in the subquery will defined the values to be inserted
-ALL indicates evluations of all WHEN clauses . for each WHEN clause that evalutes to true, Oracle will process the corresponding INTO Clause
*/