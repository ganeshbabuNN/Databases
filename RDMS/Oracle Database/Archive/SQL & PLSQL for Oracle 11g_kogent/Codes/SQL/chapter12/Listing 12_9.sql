select time, region, dept, sum(profit) as profit from sales
group by time, cube(region, dept);
