select * from
(
select dept,time,region,profit
from sales)
pivot
(
avg(profit) as avg_amt,
sum(profit) as sum_amt 
for (time) in (
(1996) as y1996,
(1997) as y1997
)
)
order by 2
/
