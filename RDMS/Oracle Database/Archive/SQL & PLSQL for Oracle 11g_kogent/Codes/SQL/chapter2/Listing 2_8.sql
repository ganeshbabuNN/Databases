select ename from employee
where city='NAGPUR'
union
select ename from employee
where city='MUMBAI';
