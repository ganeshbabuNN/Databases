select to_char(timeid,'mon'), amount
from sales_data s
where to_char(timeid,'yyyy') = '1998'    
and
timeid in
(select max(s1.timeid)
from sales_data s1
where  to_char(s1.timeid,'yyyy') = '1998'   
and to_char(s.timeid,'mon')=to_char(s1.timeid,'mon'))
order by to_char(timeid,'mm');
