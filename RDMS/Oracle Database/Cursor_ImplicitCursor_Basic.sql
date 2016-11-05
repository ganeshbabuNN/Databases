declare
  vID employees.employee_id%TYPE;
  vFirstName employees.first_name%TYPE;
  vLastName employees.last_name%TYPE;
  vHireDate employees.hire_date%TYPE;
begin
  select employee_id,first_name,last_name,hire_date
  INTO vID,vFirstName,vLastName,vHireDate
  from employees
  where employee_id =100;
end;

/*
Oracle impicitly declares cursos for all DML Statement written in PL/SQL . since the implicit cursor is declared, opened and managed by Oracle internally,
*/