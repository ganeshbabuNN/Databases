select timeid,amount,channelid, sum(amount) over(partition by channelid order by 	timeid rows unbounded preceding) cum_amt
from sales_data where  rownum < 11 order by 3,1;
