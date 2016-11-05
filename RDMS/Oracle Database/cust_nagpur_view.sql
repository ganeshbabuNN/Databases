create or replace view cust_nagpur of cust_type
with object oid (cust_code) as 
select cust_code, cust_name, city
from cust_table
where city = 'NAGPUR'
/
