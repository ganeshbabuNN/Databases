select z2.z2sr, sum(z1.z1amt) from (select sr z1sr, sum(amt) z1amt from z 	
group by sr)z1,
(select sr z2sr, sum(amt)z2amt from z group by sr)z2 where
z1.z1sr <= z2.z2sr group by z2.z2sr,z2.z2amt;
