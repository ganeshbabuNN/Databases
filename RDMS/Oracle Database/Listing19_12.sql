select a,b,d from abcd
  model
    partition by (c)
    dimension by (a,b,c)
    measures (d)
    ignore nav
  unique dimension
    rules upsert sequential order
    (d[1,for b in(4,6),1] =d[cv(),1,1]+d[cv(),2,1]);
