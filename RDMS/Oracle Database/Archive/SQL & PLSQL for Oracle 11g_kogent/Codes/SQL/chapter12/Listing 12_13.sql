select time, region, dept, sum(profit) as profit,
grouping (time) as t, grouping (region) as r,
grouping (dept) as d from sales 
group by rollup (time, region, dept);
