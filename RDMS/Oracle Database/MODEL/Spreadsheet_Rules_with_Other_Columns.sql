--the rules here state that for each value of locations ="PENSACOLA', we report "AMOUNT" as equal to the value for "amount" in 'Mobile' for that partitions.


select location,product,amount
from sales
spreadsheet
partition by (product)
dimension by (location)
measures (amount) IGNORE NAV
RULES  (amount['Pensacola']=amount['Mobile'])
order by location;

--Here we have aliased the "amount" value coz we reported both "amount" and the new value for amount(new_amt)

select location,product,new_amt
from sales
spreadsheet
partition by (product)
dimension by (location)
measures (amount new_amt) IGNORE NAV
RULES  (new_amt['Pensacola']=new_amt['Mobile'])
order by location;
