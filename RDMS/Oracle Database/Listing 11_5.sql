select to_char(timeid,'yyyy'),
channelid,to_char (sum(amount),'999,999,999,999.99')
from sales_data group by to_char(timeid,'yyyy'),channelid; 
