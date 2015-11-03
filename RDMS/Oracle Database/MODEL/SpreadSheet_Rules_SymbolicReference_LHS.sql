select product,location,year, s
from sales1
where location like 'Pen%'
Spreadsheet
RETURN updated rows
partition by (product)
dimension by (location,year)
measures (amount s) --ignore nav
rules (s['Pensacola',year > 2000]=s['Pensacola',cv()]*1.2)
order by product,location,year;


--year > 2000 the use of this element is called as SYmbolic Reference