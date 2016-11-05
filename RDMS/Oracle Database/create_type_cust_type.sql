create or replace type cust_type as
object (cust_code number(5),
cust_name  varchar2(30),
city varchar2(30),
member function getname return varchar2)
/
