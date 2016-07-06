select cname,sdate,price,
avg(price)
over(partition by cname order by sdate rows unbounded preceding) csum
from shares;
