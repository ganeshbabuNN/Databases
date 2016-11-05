select timeid,quantity,
percentile_disc(0.2) within group
(order by quantity) over()as perc_disc,
percentile_cont(0.2) within group
(order by quantity)over() as perc_cont
from sales_data where  timeid = '01-jan-98';
