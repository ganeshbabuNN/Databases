select z2.amt from z z1,z z2 where
z2.amt <= z1.amt
group by z2.amt
having count(z2.amt) = 2;
