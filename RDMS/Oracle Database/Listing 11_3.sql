select name, total, rank() over (order by total desc)
from
(select name,(physics+chemistry+maths) total from pcm);
