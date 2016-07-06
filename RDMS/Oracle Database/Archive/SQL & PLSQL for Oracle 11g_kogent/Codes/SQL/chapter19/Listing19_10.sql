 select a,b,d from abcd
   model
     partition by (c)
     dimension by (a,b,c)
     measures (d)
     ignore nav
     unique dimension
     rules upsert sequential order
     (d[for a in(1,2),for b in(1,2),1] = presentv
        (d[1,3,12],d[1,3,2],100));
