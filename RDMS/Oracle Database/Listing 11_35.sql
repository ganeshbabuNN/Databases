select percentile_disc(0.5) within group
(order by quantity) as perc_disc,
percentile_cont(0.5) within group
(order by quantity) as perc_cont
from sales_data where timeid ='01-jan-98';
