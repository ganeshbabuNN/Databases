---create the table
drop table emp_name_nds;
CREATE TABLE emp_names_nds (
  last_name VARCHAR2(25),
  first_name VARCHAR2(20) );

---calling the
DECLARE
  v_CURSOR_string VARCHAR2(2000) := '
    SELECT last_name, first_name
      FROM employees
      WHERE rownum < :rowsproc';

  TYPE r_local_emps IS RECORD (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20) );
    
  TYPE t_local_emps 
    IS TABLE OF r_local_emps;
    
  v_local_emps t_local_emps;
BEGIN

  EXECUTE IMMEDIATE v_cursor_string
    BULK COLLECT INTO v_local_emps
    USING 100;

  FORALL i IN v_local_emps.FIRST..v_local_emps.LAST  --- FOR ALL
    EXECUTE IMMEDIATE
    'INSERT INTO emp_names_nds (last_name, first_name)
      VALUES (:lastname, :firstname)'
    USING v_local_emps(i).last_name, v_local_emps(i).first_name;
      
END;
/

---check the table
select * from emp_names_nds;
  
  