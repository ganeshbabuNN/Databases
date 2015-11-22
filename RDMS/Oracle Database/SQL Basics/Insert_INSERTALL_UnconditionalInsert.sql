drop table DeptCount;
create table DeptCount(
departmentid number(10),
countemp number(10)
);

drop table DeptSalary;
create table DeptSalary(
departmentid number(10),
salarySum number(10)
);


--Inser count of employess and sum of the slary of those employees into DeptCount and DeptSalary
INSERT ALL
INTO DeptCount VALUES(departmentid,countemp)
INTO DeptSalary VALUES (departmentid,salarySum)
SELECT DISTINCT
department_id departmentid,
count(employee_id) OVER(PARTITION by department_id)countemp,
sum(salary) OVER(PARTITION by department_id)salarySum
from employees
order by department_id;

select * from DeptCount;
select * from DeptSalary;

/*

-the VALUES clause, can only contain columns referenced in the SELECT statement in the subquery
-if the VALUES clause is not included, the SELECT statement in the subquery will define the values to be inserted
-All indicates evaluation of all WHEN clauses. for each WHEN clause that evalutes to true, oracle processes the coresponding INTO Clause

*/