select timeid,amount,channelid, sum(amount) over(partition by channelid)		calc_amt, amount/sum(amount) over(partition by channelid) perc from sales_data
where rownum < 11 order by 3,1;
