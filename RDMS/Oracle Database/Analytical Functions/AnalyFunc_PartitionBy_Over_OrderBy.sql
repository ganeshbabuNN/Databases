select distinct 
       country_name,
       count(first_name) over(partition by country_name) "count_of_emp_count",
       --count(first_name) over(partition by e.department_id) "count_of_emp_dep",
       sum(min_salary) over(partition by country_name) "sum_of_sum",
       count(d.department_id) over(partition by country_name) "count_of_emp"
from employees e,departments d,locations l,countries c,regions r,jobs s
where e.department_id=d.department_id
AND d.location_id=l.location_id
AND l.country_id=c.country_id
AND c.region_id=r.region_id
AND e.job_id =s.job_id;