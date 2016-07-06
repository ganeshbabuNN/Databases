delete z z1
where(z1.sr,z1.amt)in
(select z2.sr,z2.amt from z z2
group by z2.sr,z2.amt having count(*) > 1);
