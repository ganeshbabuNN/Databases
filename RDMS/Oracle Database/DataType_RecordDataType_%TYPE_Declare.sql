--basic way
declare
type typeemployees is record
(
employeeid employees.employee_id%TYPE,
employeename employees.first_name%TYPE,
emailAddress  employees.email%TYPE
);
begin
null;
end;

