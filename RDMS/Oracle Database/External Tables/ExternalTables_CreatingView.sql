create view vw_employeemaster as 
select * from employeemaster where lastname='babu';

--check
select * from vw_employeemaster;