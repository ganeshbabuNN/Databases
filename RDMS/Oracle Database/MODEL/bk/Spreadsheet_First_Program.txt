select location,product,amount,new_amt
from sales
Spreadsheet
partition by (product)
dimension by (location,amount)
measures (amount new_amt)
RULES (new_amt['Pensacola',ANY] = new_amt['Pensacola',cv(amount)]*2)
order by product,location;