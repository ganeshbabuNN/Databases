create or replace type bill as object
(billno number,
billdate date, 
cust customer,
billitems billitemtable,
member function
billvalue return  number)
/
