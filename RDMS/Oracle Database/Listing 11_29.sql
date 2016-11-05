select timeid,channelid,amount,
lag(amount,1)over(order
by timeid)lg1, amount/lag(amount,1)over(order by timeid) ratio_lag, 		lead(amount,1)over(order by timeid) ld1, amount/lead(amount,1)over(order by 		timeid) ratio_lead
from sales_data
where custid = 16480
and timeid = '01-jan-98'
order by 1;
