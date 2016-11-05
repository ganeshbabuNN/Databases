declare
  type t_temp_record is table of employees%ROWTYPE;
  
  v_employees t_temp_record;
begin
   select *
   bulk collect into v_employees
   from employees;
end;