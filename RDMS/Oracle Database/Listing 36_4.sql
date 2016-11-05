create type cust_t as object
(
  cust_code  number,
  cust_name  varchar2(20),
  city   	varchar2(30),
  productref ref productobj
)
/
