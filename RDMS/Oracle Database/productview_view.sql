create or replace view productview of productobj
with object oid (productcode) as 
select productcode,productname,cast(multiset(select cust_code,cust_name,city
from cust_table c where c.productcode=d.productcode)as cust_list)
from product d
/
