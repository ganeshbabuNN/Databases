select * from (
   select cust_name,times_purchased as "Puchase Frequency", state_code
   from customers t
)
pivot 
(
   count(state_code) as statecode,
   count(cust_name) as time
   for state_code in ('NY' as "New York",'CT' "Connecticut",'NJ' "New Jersey",'FL' "Florida",'MO' as "Missouri")
)
order by 1;

--Here the column will append with the aggreate 1 with the state code alias like NewYork_STATECODE,New York_TIME,Connecticut_STATECODE,Connecticut_TIME New Jersey_STATECODE New Jersey_TIME Florida_STATECODE ...etc 
--Note Multiple Aggregates should be in same domain