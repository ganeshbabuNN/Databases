insert into employees values(205,'Seeta','road','Michel@gmail.com',345345,
'03-JUN-15','IT_PROG',4500,null,100,60);
insert into employees values(209,'Michale','handson','Michel@gmail.com',345345,
'03-JUN-15','IT_PROG',4500,null,100,60);
insert into employees values(210,'Geeta','rao','ra@gmail.com',345345,
'03-JUN-15','IT_PROG',4500,null,100,60);

--using soundex algorithms
select first_name,last_name,hire_date,phone_number
from employees
where soundex(first_name)= SOUNDEX('gita')
or SOUNDEX(first_name)=SOUNDEX('Sita');

--another convertin how it wors
select SOUNDEX(first_name),first_name,last_name,hire_date,soundex('gita')
from employees
order by first_name;
