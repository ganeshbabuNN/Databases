select time, region, dept,
sum(profit) as profit from sales
group by rollup(time,region,dept);
