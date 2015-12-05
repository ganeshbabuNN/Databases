create or replace trigger preventsunday
  BEFORE INSERT OR UPDATE
    ON employeemuster
  for each row when (NEW.employee_id>0)
begin
  if to_char(:NEW.muster_date,'DY') ='SUN' THEN
    raise_application_error(-20000, 'the muster date cannot hold sunday');
  end if;
end;
/

select max(employee_id) from employees;
select to_char(tO_date('29-04-2008','dd-mm-yyyy'),'DY') from dual;
select * from employeemuster;
--update which gives error
update employeemuster
set muster_date='06-apr-2008' 
where employee_id = 101;

--insert which gives error
insert into employeemuster (employee_id,muster_date,attendence)
values(110,'06-apr-2008','Absent');

--insert which gives no error
insert into employeemuster (employee_id,muster_date,attendence)
values(110,'07-apr-2008','Absent');