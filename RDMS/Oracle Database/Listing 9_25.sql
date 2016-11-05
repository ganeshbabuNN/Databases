delete z z1 where
z1.rowid < any
(select z2.rowid from z z2
where z1.sr = z2.sr 
and z1.amt = z2.amt);
