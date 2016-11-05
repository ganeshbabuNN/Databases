@pivot1

select * from
(
select dept,time,profit
from sales)
pivot
(
sum(profit) for time in (1996 as y1996,1997 as y1997)
)
order by 2;
