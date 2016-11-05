select z2.l1 l1 from
(data from step 1)z1, (data from step 1)z2 where
z2.l1 >= z1.l1 group by z2.l1 having count(*) = 3;
