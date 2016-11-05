--taking as example, to cacluate the forecast sales for each city with an increase of 10% for Pensacola and 12% for mobile.

select location,product,amount,fsales "Forecast Sales"
from sales
spreadsheet
partition by (product)
dimension by (location,amount)
measures (amount fsales) IGNORE NAV
RULES (fsales['Pensacola',ANY] =fsales ['Pensacola',cv(amount)]*1.1,
       fsales ['Mobile',ANY]=fsales['Mobile',cv()]*1.12)
order by product,location;