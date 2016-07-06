declare
  type t_varchar2 is table of varchar2(100)
  index by binary_integer;
  
  type t_number is table of number
  index by binary_integer;
  
  v_first_name t_varchar2;
  v_last_name t_varchar2;
  
  v_salary t_number;  
begin
  
  select first_name,last_name,salary
  bulk collect into v_first_name ,v_last_name,v_salary
  from employees;
  
 end;
/