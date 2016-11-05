select *
from address a
where a.plot
in 
(select c.plot
from customer c
where c.address.code = '701');
