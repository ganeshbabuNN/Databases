select * from
(
select dept,time,region,profit
from sales)
pivot
(
avg(profit) as avg_amt,
sum(profit) as sum_amt 
for (time,region) in (
(1996,'east') as east_1996,
(1996,'west') as west_1996
)
)
order by 2
/
