select z1.bname, z1.tamt from(select d1.bname,sum (d1.amount)tamt from deposit 	
d1 group by d1.b
(select distinct sum(d2.amount)tamt from deposit d2 group by d2.bname) z2
group by z1.bname, z1.tamt;
