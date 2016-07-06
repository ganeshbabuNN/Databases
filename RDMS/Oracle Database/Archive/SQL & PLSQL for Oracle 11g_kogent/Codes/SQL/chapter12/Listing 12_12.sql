select time, region, dept, sum(profit) as profit from sales
group by grouping sets(region,dept), grouping sets(time);
