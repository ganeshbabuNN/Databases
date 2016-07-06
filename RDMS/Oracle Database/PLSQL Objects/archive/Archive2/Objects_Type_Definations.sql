--Object is a Database Object
CREATE OR REPLACE TYPE emp_obj
AS OBJECT  --as  a object
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE
) ; 
/

-- before adding any attribute, ensure delete all dependenciy of that type to be delted

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

drop type emp_obj;
drop type t_emp_obj;
drop table emp_obj_tab;

---intialize the object
DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE,
    salary NUMBER(8,2)
  );  
  v_emps r_emps;  
  v_emp_obj emp_obj;
BEGIN
    v_emp_obj := emp_obj(     
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@g.com',
    phone_number => '233-33-322',
    hire_date => sysdate,
    salary => 5000);  
END; 
/