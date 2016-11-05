select timeid,quantity,cume_dist()over(order by quantity)
from sales_data
where timeid ='01-jan-98';
