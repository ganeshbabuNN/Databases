CREATE OR REPLACE TRIGGER employees_pk 
before 
  INSERT ON "HR"."EMPLOYEES" 
  FOR EACH row 
  
  BEGIN 
    IF inserting THEN 
      IF :NEW."EMPLOYEE_ID" IS NULL THEN
        SELECT EMPLOYEES_SEQ.nextval 
          INTO :NEW."EMPLOYEE_ID" 
          FROM dual;
      END IF;
   END IF;
END;
/

