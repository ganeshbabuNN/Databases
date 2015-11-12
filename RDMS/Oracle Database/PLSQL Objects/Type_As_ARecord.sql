-- Type has a record with table definations
DECLARE TYPE r_emps IS RECORD   ---- this is type has arecord
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE
  );
Begin
	null;
end;
/


--adding salary attribute
DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE,
    salary number(8,2) --- added new
  );
   type t_emps is table of r_emps;
  begin 
     null;
  end;
/