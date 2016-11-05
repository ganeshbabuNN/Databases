select time,nvl(region,0) region, dept, sum(profit) as profit from sales 
group by cube(time, region, dept);
