select dense_rank() over (order by trunc(sum(amount),-3)) default_rank, 		to_char(timeid,'yyyy'), channelid, to_char(trunc(sum(amount),-		3),'999,999,999,999.99')
from sales_data group by to_char(timeid,'yyyy'), channelid;
