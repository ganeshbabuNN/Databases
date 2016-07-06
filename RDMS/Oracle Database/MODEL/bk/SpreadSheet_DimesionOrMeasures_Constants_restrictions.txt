---NO RULES added, restricting directly in MEASURES
select location,product,amount,new_amt
from sales
spreadsheet
partition by (product)
dimension by (location,amount)
measures (amount new_amt) IGNORE NAV
RULES (new_amt['Pensacola',ANY]= 13)
order by product,location;

--with RULES Restrictions
select location,product,amount,new_amt
from sales
spreadsheet
partition by (product)
dimension by (location,amount)
measures (amount new_amt) IGNORE NAV
RULES (new_amt['Pensacola',ANY]= 13)
order by product,location;

--We are saying we want the value 13 for ANY value of location and amount. In second case, we are setting the value of amt_cal to 13 for those rows contains locations ='Pensacola'
