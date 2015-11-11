drop table emp_names;
CREATE TABLE emp_names (
  last_name VARCHAR2(25),
  first_name VARCHAR2(20))
/ 
---copy into the emp_name using BULK COLLECT FORALL
DECLARE
  CURSOR c_emps IS
    SELECT last_name, first_name
      FROM employees;
  TYPE t_local_emps 
    IS TABLE OF c_emps%ROWTYPE;
  v_local_emps t_local_emps;
BEGIN
  SELECT last_name, first_name
    BULK COLLECT INTO v_local_emps
    FROM EMPLOYEES;
  FORALL i IN v_local_emps.FIRST..v_local_emps.LAST
    INSERT INTO emp_names 
      VALUES v_local_emps(i);      
END;
/