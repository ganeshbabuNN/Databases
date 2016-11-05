drop table EmployeeAuditTrail;
create table EmployeeAuditTrail(
employee_id number(10),
first_name varchar2(25),
last_name varchar2(34),
salary number(10),
user_name varchar2(21),
operation_date date,
ModeOfOperation varchar2(10)
);

desc EmployeeAuditTrail;

create or replace 
trigger EmployeeAudit
AFTER UPDATE oR delete ON employees
  for each row
declare
  varKindOperation varchar2(8);
  varOperationdate date;
  varuser varchar2(10);
begin
  varOperationdate := SYSDATE;
  varuser :=user;
  
  if UPDATING THEN
    varKindOperation :='Update';
  ELSIF DELETING then
    varKindOperation :='Delete';
  END IF;
  
  insert into EmployeeAuditTrail values(
  :OLD.employee_id,:OLD.first_name,:OLD.last_name,:OLD.salary,
  varuser,varOperationdate,varKindOperation);  
end;
/

select * from employees;
select max(employee_id) from employees;
select sysdate from dual;

--update
update employees
set salary = 2000.12
where employee_id=101;

--delete
delete from employees where employee_id=209;

---now check the audit table
select * from EmployeeAuditTrail;

