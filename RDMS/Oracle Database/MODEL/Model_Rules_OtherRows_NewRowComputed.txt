select product,location,year, s "Forecast 2007 Sales"
from sales1
Spreadsheet
partition by (product)
dimension by (location,year)
measures (amount s) ignore nav
rules (s['Pensacola',2007]=s['Pensacola',2006]+s['Pensacola',2005],
       s['Mobile',2007]=s['Mobile',2006]+s['Mobile',2005])
order by product,location,year;