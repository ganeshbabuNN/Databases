select to_char(timeid,'mon'), min(amount)  KEEP
(DENSE_RANK last ORDER BY (timeid)) lastvalue
from sales_data where to_char(timeid,'yyyy') = '1998'
group by to_char(timeid,'mon'), to_char(timeid,'mm')
order by to_char(timeid,'mm');
