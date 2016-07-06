select a,b,c,d from abcd
  model
    partition by (c)
    dimension by (a, b)
    measures (d)
    ignore nav
    unique dimension
    rules upsert sequential order
    (d[a=1, b=3] = d[1, 1] + d[1, 2]+12);
