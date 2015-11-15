select A.first_name,A.last_name,b.department_name
from employees A,   ---Alias A
(select department_id ,department_name from departments) b  ---alias B
where a.department_id=b.department_id;
