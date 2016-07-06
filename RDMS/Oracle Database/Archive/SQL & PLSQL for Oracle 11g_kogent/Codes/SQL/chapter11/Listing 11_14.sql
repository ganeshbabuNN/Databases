select rank() over (order by trunc(sum(amount),-2)) default_rank, ntile(4) over 		(order by trunc(sum(amount),-3)) 		rw_num,to_char(timeid,'yyyy'),channelid,to_char(trunc(sum(amount),-		2),'999,999,999,999.99')
from sales_data 
group by to_char(timeid,'yyyy'), channelid;
