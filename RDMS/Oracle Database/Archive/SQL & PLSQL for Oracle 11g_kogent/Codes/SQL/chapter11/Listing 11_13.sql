select rank() over (order by sum(amount)) default_rank,percent_rank() over 		(order by sum(amount)) per_rank,to_char(timeid,’yyyy’), 		channelid,to_char(sum(amount), ’999,999,999,999.99')
from sales_data
group by to_char(timeid,’yyyy’), channelid;
@an10
