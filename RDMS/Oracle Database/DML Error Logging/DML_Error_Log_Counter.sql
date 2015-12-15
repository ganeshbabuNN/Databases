--create the error table
drop table EmployeeTable;
Create table EmployeeTable(
employee_id number(2) PRIMARY KEY,
employee_status varchar2(2)
);

----stores the 100 records
SET SERVEROUTPUT ON
DECLARE 
i number;
BEGIN
i :=1;
While i<=100 LOOP
  insert into employeetable(employee_id,employee_status) values(i,'P');
  dbms_output.put_line('employee_id: ' || i);
  i:=i+1;
 END LOOP;
END;
/

---
/*
it the employee_id column is set to number(1), 
it can only take two digit values, in this case 9, the moments the script inserts the last record i,e 100
as the employee_id has two digits, the INSERT operations fails
to hanlde such an error, DML Error logging can be used.
*/