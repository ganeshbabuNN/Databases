select distinct first_name from employees;

--using LIKE
select first_name from employees
where first_name LIKE '%Jo%';

---same in REGEXP_LIKE
select first_name from employees
where REGEXP_LIKE(first_name,'\Jo\');