DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE,
    salary number(8,2) 
  );

  v_emps r_emps;

  BEGIN
	v_emps.last_name :='ganesh';
	v_emps.first_name :='babu';
  end;