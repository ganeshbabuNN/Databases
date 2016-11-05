--Using subquery in the Pivot XML clause

create table preferred_states
(
   state_code varchar2(2)
);

insert into preferred_states values ('FL');

commit;

--using subquery in the pivot clause *not working in 11g TBD
select * from (
   select times_purchased as "Puchase Frequency", state_code
   from customers t
)
pivot xml
(
   count(state_code) as state_code
   for state_code in (select state_code from preferred_states)
)
order by 1;

