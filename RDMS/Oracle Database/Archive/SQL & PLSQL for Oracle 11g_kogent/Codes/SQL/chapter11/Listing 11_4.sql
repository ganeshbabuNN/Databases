select name, physics, rank() over (order by physics desc) rnk
from pcm;
