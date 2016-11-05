select b,c,d from abcd
    model
      partition by (c)
      dimension by (b)
      measures (d)
      ignore nav
      unique dimension
        rules upsert sequential order
       (d[3] = d[1]*d[1]);
