create or replace function get_employees (dept varchar2) 
return number is 
str varchar2(300); 
num_of_employees number; 
begin 
	str := 'select count(*) from 
	department where dept = :dept'; 
	execute immediate str 
	into num_of_employees 
	using dept; 
	return num_of_employees; 
end; 
/
