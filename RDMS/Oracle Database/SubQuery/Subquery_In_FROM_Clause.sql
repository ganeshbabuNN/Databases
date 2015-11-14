select A.first_name,A.last_name,B.department_name
from employees A,   ---Alias A
(select department_name from departments) B  ---alias B
where a.department_id=B.department_id;