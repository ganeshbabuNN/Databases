    select a,b,c,d from abcd
       model
         partition by (c)
         dimension by (a,b)
         measures (d)
         ignore nav
       unique dimension
         rules upsert sequential order
         (d[for a in(1,2),1] =presentv (d[1,4],d[1,3],120));
