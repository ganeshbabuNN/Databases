--This will ensure only the rows which are updated will be displayed.

select product,location,year, s "Forecast 2007 Sales"
from sales1
Spreadsheet
RETURN UPDATED ROWS
partition by (product)
dimension by (location,year)
measures (amount s) ignore nav
rules (s['Pensacola',2007]=s['Pensacola',2006]+s['Pensacola',2005],
       s['Mobile',2007]=s['Mobile',2006]+s['Mobile',2005])
order by product,location,year;



--comment ignore values, removes the zeros and replace with null

select product,location,year, s "Forecast 2007 Sales"
from sales1
Spreadsheet
RETURN updated rows
partition by (product)
dimension by (location,year)
measures (amount s) --ignore nav
rules (s['Pensacola',2007]=s['Pensacola',2006]+s['Pensacola',2005],
       s['Mobile',2007]=s['Mobile',2006]+s['Mobile',2005])
order by product,location,year;