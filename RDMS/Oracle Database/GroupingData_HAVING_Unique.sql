select employee_Id,SUM(salary)
from employees
group by employee_Id
HAVING COUNT(employee_id) =1;

/*
- the DISTINCT Clause is that it eliminates duplicates, but does not show which values actually were duplicated in the orginal data. the HAVING clause can identify which values were unique or non-unique
*/