create table orderdetails(
orderno number(10),
orderdate date,
productname varchar2(25),
cost number(12,2),
qty number(5),
employeeno number(10),
customername varchar2(25),
constraint unq_orderproduct unique(orderno,productname) --constraints
using index(create unique index idx_orderproduct
on orderdetails(orderno,productname)));