select e1.ename from emp_company e1
where exists
(select 'X' from company c1
where e1.cname = c1.cname and exists 
(select 'X' from company c2
where c1.city = c2.city and exists
(select 'X' from emp_company e2
where e2.cname = c2.cname and e2.ename='AJAY')));
