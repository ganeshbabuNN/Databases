select * from (
   select times_purchased as "Puchase Frequency", state_code
   from customers t
)
pivot 
(
   count(state_code)
   for state_code in ('NY' as "New York",'CT' "Connecticut",'NJ' "New Jersey",'FL' "Florida",'MO' as "Missouri")
)
order by 1;