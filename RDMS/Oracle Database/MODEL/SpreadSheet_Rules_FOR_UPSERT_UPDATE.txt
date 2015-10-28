--Normal query
select product ,amount,amount*2,year
from sales1
where product ='Cotton'
order by product,year;

or using MODEL
select product,s "amount X2" ,t
from sales1
model
return updated rows
partition by (location)
dimension by(product,year t)
measures (amount s) ignore nav
    (s['Cotton',t] order by t= s[cv(),cv(t)]*2)
order by product ,t;

select * from sales1;

--by using Symbolic reference using the between conditions 
select product,s "amount X2" ,t
from sales1
spreadsheet
return updated rows
partition by (location)
dimension by(product,year t)
measures (amount s) ignore nav
    (s['Cotton',t between 2002 and 2007] order by t= s[cv(),cv(t)]*2)
order by product ,t;


--but using even if there is no data, it should disply , this can be done using FOR LOOP
select l as location,product,s "amount X2" ,t
from sales1
spreadsheet
return updated rows
partition by (location l)
dimension by(product,year t)
measures (amount s) ignore nav
    (s['Cotton',for t in (2002,2003,2004,2005,2006,2007)] order by t= s[cv(),cv(t)]*2)
order by l,product ,t;


--UPSERT ( by default options)-- shows everything update and non-updated rows
select l as location,product,s "amount X2" ,t
from sales1
spreadsheet
return updated rows
partition by (location l)
dimension by(product,year t)
measures (amount s) ignore nav
RULES UPSERT
    (s['Cotton',for t in (2002,2003,2004,2005,2006,2007)] order by t= s[cv(),cv(t)]*2)
order by l,product ,t;

---UPDATE shows only the updated rows
select l as location,product,s "amount X2" ,t
from sales1
spreadsheet
return updated rows
partition by (location l)
dimension by(product,year t)
measures (amount s) ignore nav
RULES UPDATE
    (s['Cotton',for t in (2002,2003,2004,2005,2006,2007)] order by t= s[cv(),cv(t)]*2)
order by l,product ,t;

