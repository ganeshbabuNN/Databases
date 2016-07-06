select timeid, amount, min(amount)  KEEP (DENSE_RANK Last ORDER BY (timeid)) 		over() minvalue
from sales_data where to_char(timeid,'yyyy')='1998';
