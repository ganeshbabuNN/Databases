select rank(10) within group
(order by quantity) as hrank,
percent_rank(10) within group
(order by quantity) as perc_rank,
cume_dist(10) within group
(order by quantity) as cume_rank
from sales_data where custid = 37280 and timeid = '01-jan-98';
