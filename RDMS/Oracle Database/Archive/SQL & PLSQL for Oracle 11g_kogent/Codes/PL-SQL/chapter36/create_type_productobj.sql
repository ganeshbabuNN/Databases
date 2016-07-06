create or replace type productobj as
object (productcode number(2),
productname varchar2(30),
customers cust_list )
/
