select timeid,amount, channelid , last_value(amount) over(partition by 
channelid order by timeid rows between unbounded preceding and unbounded 
following) last_amt from sales_data where rownum < 11 order by 3,1;
