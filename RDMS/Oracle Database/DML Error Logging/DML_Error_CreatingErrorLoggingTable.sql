--create the error table
drop table EmployeeTable;
Create table EmployeeTable(
employee_id number(2) PRIMARY KEY,
employee_status varchar2(2)
);

--create the error logging table
/*
oracle provides a built-in PL/SQL package named DBMS_ERRLOG, specially for this purpose
*/
begin
DBMS_errlog.create_error_log('EmployeeTable','errorEmployeeTable');
end;
/

--check the error log definiations
desc errorEmployeeTable;