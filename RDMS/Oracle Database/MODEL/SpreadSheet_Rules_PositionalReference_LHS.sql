select product,location,year, s
from sales1
where location like 'Pen%'
Spreadsheet
RETURN updated rows
partition by (product)
dimension by (location,year)
measures (amount s) --ignore nav
rules (s['Pensacola',2007]=s['Pensacola',2006])
order by product,location,year;