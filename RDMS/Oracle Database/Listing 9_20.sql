select z5.sr from(select z2.sr, sum(z1.amt)amt from z z1, z z2 where
z1.sr <= z2.sr group by z2.sr)z5 where
z5.amt in(select max(z4.amt) from (select z2.sr, sum(z1. amt)amt from z 			z1, z z2 where
z1.sr <= z2.sr group by z2.sr)z4);
