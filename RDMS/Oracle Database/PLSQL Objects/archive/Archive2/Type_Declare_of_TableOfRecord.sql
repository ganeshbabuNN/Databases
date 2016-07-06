-- Type can be a table of that record type
DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE
  );
type t_emps is TABLE OF r_emps;   --- declare table of record
  Begin
	null;
  end;
/


--initialize the type of this record
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
/