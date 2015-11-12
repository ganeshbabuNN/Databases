/*
This compound triggers consists of all the DML level , where it may be insert or delete or update
*/

CREATE OR REPLACE TRIGGER compound_trigger
     FOR INSERT OR DELETE OR UPDATE ON employees
       COMPOUND TRIGGER   ----put has a compound triggers

     v_trigger_life_variable NUMBER := 0;   ---global variables
   
     BEFORE STATEMENT IS    --- first sessions of the trigger
       v_local_variable NUMBER := 1;
     BEGIN
       NULL;
     END BEFORE STATEMENT;
   
     BEFORE EACH ROW IS
     BEGIN
       NULL;
     END BEFORE EACH ROW;
   
     AFTER EACH ROW IS
     BEGIN
       NULL;
     END AFTER EACH ROW;
   
     AFTER STATEMENT IS
     BEGIN
       NULL;
     END AFTER STATEMENT;
   END compound_trigger;
/



---create a view
CREATE OR REPLACE VIEW hr_emps_by_dept
AS
  SELECT first_name, 
         last_name, 
         department_id, 
         count(*) over (partition by department_id) dept_cnt
    FROM employees;
    
select * from hr_emps_by_dept where last_name='Grant';

---update

UPDATE hr_emps_by_dept
  SET department_id = 10
  WHERE last_name='Grant';

--this is will not work, on directly on view, we need to use instead Of Trigger
