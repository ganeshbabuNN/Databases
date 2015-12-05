/*here this is a simple trigger, usually trigger begins with inserting if there is a new record ( define as new_emp_rec) before inserting for each row, if there is employee_id is null, then insert the next sequence value. */

create or replace trigger employee_pk 
before insert on employees 
referencing new as new_emp_rec 
for each row 
BEGIN
   if inserting 
  THEN
    IF :new_emp_rec.employee_id IS NULL
    THEN
      :new_emp_rec.employee_id :=employees_seq.nextval;
      END IF;
    end if;
end;