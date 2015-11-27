--normal way
select employee_id,
       first_name || ' '||last_name "Employee_name",
       extract(month from hire_date) as "Month of joining",
       salary,
       to_char(to_date(salary,'J'),'JSP') "salary in words"
from employees
where extract(year from hire_date)='2005';

--In lower case
select employee_id,
       first_name || ' '||last_name "Employee_name",
       extract(month from hire_date) as "Month of joining",
       salary,
       to_char(to_date(salary,'J'),'jSP') "salary in words"
from employees
where extract(year from hire_date)='2005';

--In Title case
select employee_id,
       first_name || ' '||last_name "Employee_name",
       extract(month from hire_date) as "Month of joining",
       salary,
       to_char(to_date(salary,'J'),'JsP') "salary in words"
from employees
where extract(year from hire_date)='2005';

--expressed in Ruppeess in Paise
select employee_id,
       first_name || ' '||last_name "Employee_name",
       extract(month from hire_date) as "Month of joining",
       salary,
       to_char(to_date(salary,'J'),'JsP') "salary in words",
       DECODE(trunc(salary),0,' ZERO',to_char(to_date(trunc(salary),'J'),'JSP')) ||
       ' AND'|| DECODE(TRUNC(MOD(salary,1)*100),0,' ZERO',
       TO_CHAR(to_Date(TRUNC(MOD(salary,1)*100),'J'),'JSP')) ||' Paise' "Amount"
from employees
where extract(year from hire_date)='2005';

















