select region, dept, sum(profit) as profit from sales
group by grouping sets(region,dept);
