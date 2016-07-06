select a, b, c, d from abcd
  model
    partition by (c)
    dimension by (a, b)
    measures (d)
    ignore nav
    unique dimension
    rules upsert sequential order
    (d[1, for b in (4, 6)] = d[cv( ), 2] + d[cv( ), 2]);
