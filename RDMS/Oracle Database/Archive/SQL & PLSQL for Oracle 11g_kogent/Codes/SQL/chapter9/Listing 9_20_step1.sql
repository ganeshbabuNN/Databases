(select z2.sr, sum(z1.amt)amt from z z1, z z2    
Where z1.sr <= z2.sr group by z2.sr);
