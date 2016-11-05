create view cust_view1 of cust_t with object identifier(cust_code)
as select c.cust_code,c.cust_name,c.city,
make_ref(productview, c.productcode) 
from cust_table c
/
