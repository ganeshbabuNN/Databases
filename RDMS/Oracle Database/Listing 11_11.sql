select * from (select rank() over (order by trunc(sum(amount),-2), 		to_char(sum(quantity),'999,999,99') desc) default_rank, 		to_char(timeid,'yyyy'),channelid,to_char(trunc(sum(amount),-		2),'999,999,999,999.99'),to_char(sum(quantity),'999,999,99')
from sales_data group by to_char(timeid,'yyyy'),channelid)
where default_rank < 4;
