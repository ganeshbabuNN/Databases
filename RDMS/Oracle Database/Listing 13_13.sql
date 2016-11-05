select decode(trunc(phy/25),4,'a',3,'a',2,'b',1,'c','d') grade,
count(1) cnt
from marks
group by decode(trunc(phy/25),4,'a',3,'a',2,'b',1,'c','d')
/
