CREATE OR REPLACE TRIGGER compound_trigger
     FOR INSERT OR DELETE OR UPDATE ON employees
       COMPOUND TRIGGER

     v_trigger_life_variable NUMBER := 0;   
   
     BEFORE STATEMENT IS
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

