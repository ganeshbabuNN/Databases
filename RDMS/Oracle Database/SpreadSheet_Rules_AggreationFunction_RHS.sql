select product,location,amount, s
from sales1
Spreadsheet
--RETURN updated rows
partition by (product)
dimension by (location,amount)
measures (amount s) --ignore nav
rules (s['Pensacola',-1]=sum(s)[cv(),ANY])
order by product,location,amount DESC;