select distinct c1.cname
from company c1
where not exists
((select c2.city
 from company c2
 where c2.cname='acc')
minus
(select c3.city
 from company c3
 where c3.cname=c1.cname));
