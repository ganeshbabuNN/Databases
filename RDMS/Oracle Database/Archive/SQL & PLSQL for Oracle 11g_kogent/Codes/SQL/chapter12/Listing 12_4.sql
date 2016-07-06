select time, region, dept, sum(profit) as profit from sales 
group by time, region, dept;
