
select * from
(
select dept,time,region,profit
from sales)
pivot
(
sum(profit) for (time,region) in (
(1996,'east') as east_1996,
(1996,'west') as west_1996,
(1996,'central') as central_1996
)
)
order by 2
/
