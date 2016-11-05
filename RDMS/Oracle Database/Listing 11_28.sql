select timeid, amount,channelid, sum(amount) over(partition by channelid) 		calc_amt,ratio_to_report(amount) over(partition by channelid) rat
from sales_data 
where rownum < 11
order by 3,1;
