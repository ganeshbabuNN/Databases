---object declarations
CREATE OR REPLACE TYPE emp_obj
AS OBJECT  --as object
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE
) ; 
/

--calling that declaring r_emps as a record
DECLARE
  TYPE r_emps IS RECORD
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
--can also declare as type of of that record
DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE
  );
type t_emps is TABLE OF r_emps;
  Begin
	null;
  end;
/
--create table of above object type
CREATE TABLE emp_obj_tab (
  emp_rec emp_obj )
/

--create a type of that table which is avaiable in DB
create or replace TYPE t_emp_obj 
AS TABLE OF emp_obj;
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
-- before adding any attribute, ensure delete all dependenciy of that type
drop type emp_obj;
drop type t_emp_obj;
drop table emp_obj_tab;
CREATE OR REPLACE TYPE emp_obj
AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary number(8,2)
)  
/

--assigning the value this is in Record
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

--where as in Object, need to initialize throught constructor
DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE,
    salary NUMBER(8,2)
  ) ;
  
  v_emps r_emps;
  
  v_emp_obj emp_obj;
BEGIN
 ---- here is the instance of the emp_obj object with the name parameter initialized.
  v_emp_obj := emp_obj(     
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@g.com',
    phone_number => '233-33-322',
    hire_date => sysdate,
    salary => 5000);   
END; 
/