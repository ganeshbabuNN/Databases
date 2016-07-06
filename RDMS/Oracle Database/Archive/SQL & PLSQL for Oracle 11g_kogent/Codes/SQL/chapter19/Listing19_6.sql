select a, b, c, d from abcd
model
partition by (c)
    dimension by (a, b)
    measures (d,0 cnt)
    ignore nav
    unique dimension
    rules iterate(10) until(d[1,3]-previous(d[1,3])  >3)
    (
d[1,3]=d[1,3]*1.1,
cnt[1,3]=cnt[1,3]+1,
d[1, 6] = cnt[1,3]
);
