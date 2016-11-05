select distinct first_name from employees;

--using LIKE
select first_name from employees
where first_name LIKE '%Jo%' or
first_name LIKE '%Jonathon%';

---same in REGEXP_LIKE
select first_name from employees
where REGEXP_LIKE(first_name,'\Jo(|nathon)\');