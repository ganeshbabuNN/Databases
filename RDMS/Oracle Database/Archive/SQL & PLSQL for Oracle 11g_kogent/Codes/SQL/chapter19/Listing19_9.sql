  select a,b,d from abcd
      model
         partition by (c)
         dimension by (a,b,c)
         measures (d)
         ignore nav
     unique dimension
         rules upsert sequential order
         (d[1,1,1] = d[1,2,1]+d[1,3,1]-10);
