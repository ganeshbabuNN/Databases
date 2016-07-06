select time, region, dept, sum(profit) as profit,
group_id() grid from sales
group by rollup (time, region),rollup(time, dept)
order by 5
