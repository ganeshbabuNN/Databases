create table z(sr number, amt number);
select z2.sr,z2.amt, sum(z1.amt) from z z1,z z2 where
z1.sr <= z2.sr group by z2.sr,z2.amt;
