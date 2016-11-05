select channelid,sum(amount) sum_amt,max(sum(amount)) over() 
calc_amt,sum(amount) / max(sum(amount)) over() ratio
from sales_data where rownum < 11
group by channelid order by 1;
