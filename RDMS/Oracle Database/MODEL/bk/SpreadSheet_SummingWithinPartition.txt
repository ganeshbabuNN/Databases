select product,location,amount,s
from sales1
Spreadsheet
partition by (product)
dimension by (location,amount)
measures (amount s) ignore nav
rules (s['*** Partitioning Sum =',-1]=sum(s)[ANY,ANY])
order by product,location desc;


--putting null instead of -1
select product,location,amount,s
from sales1
Spreadsheet
partition by (product)
dimension by (location,amount)
measures (amount s) ignore nav
rules (s['*** Partitioning Sum =',null]=sum(s)[ANY,ANY])
order by product,location desc;


--Returning Updated Rows
select product,location,amount,s
from sales1
Spreadsheet
RETURN updated rows
partition by (product)
dimension by (location,amount)
measures (amount s) ignore nav
rules (s['*** Total Sales is ',null]=sum(s)[ANY,ANY])
order by product,location desc;