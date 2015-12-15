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

--logging an Error
----stores the 100 records
SET SERVEROUTPUT ON
DECLARE 
i number;
BEGIN
i :=1;
While i<=100 LOOP
  insert into employeetable(employee_id,employee_status) values(i,'P')
  Log ERRORS into errorEmployeeTable REJECT LIMIT 1;
  dbms_output.put_line('employee_id: ' || i);
  i:=i+1;
 END LOOP;
END;
/

/*
the error logging clause:
-Allows the PL/SQL code block to complete gracefully instead of halting executions with an 
ORA-12899: value too large for column error on the last inert
-Logs the failures on the last insert to the errorEmployeeTable
Now since the errors are logged, the 99 correct records are populated in the errorEmployeetable.
*/

--query the erroremployee table
select * from errorEmployeeTable;

--in the normal insert statements
insert into employeetable  values(21,'Ps')
Log ERRORS into errorEmployeeTable REJECT LIMIT UNLIMITED;


