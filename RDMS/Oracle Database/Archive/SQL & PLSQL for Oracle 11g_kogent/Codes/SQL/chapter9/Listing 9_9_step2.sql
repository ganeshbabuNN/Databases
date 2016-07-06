select count(*),d.dname from(data from step 1)z,dept d
where z.e1 = d.ename group by  d.dname;
