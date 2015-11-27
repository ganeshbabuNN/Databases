--BETWEEN OPERATOR USING
select first_name,
       hire_date,
       sum(salary)
from employees
where extract(MONTH from hire_date)BETWEEN '08' AND '10'  --BETWEEN OPERATOR USING
GROUP BY first_name,hire_date
having sum(salary) BETWEEN 5000 AND 50000;

--BETWEEN with having
select first_name,
       hire_date,
       sum(salary)
from employees
where extract(MONTH from hire_date)BETWEEN '08' AND '10'  --BETWEEN with havin
GROUP BY first_name,hire_date
having sum(salary) >=5000 AND SUM(salary) <50000;    --BETWEEN with havin

---equalvalent toBETWEEN
select first_name,
       hire_date,
       sum(salary)
from employees
where extract(MONTH from hire_date) >='08'            -equalvalent toBETWEEN
AND extract(MONTH from hire_date) <='10'
GROUP BY first_name,hire_date
having sum(salary) >=5000 AND SUM(salary) <50000;    -equalvalent toBETWEEN

--the NOT operator can also be used with BETWEEN