select location,product,t,d
from sales1
model
return updated rows
partition by (location)
dimension by (product,year t)
measures (amount d)
    (d['Cotton',t> 2005] order by t asc =sum(d)[cv(),t between cv(t)-2 and cv(t)-1])
order by product;

--you can use the ordre by in the RHS of the assign for new variables
--the illustrations is as shown below
S('COTTON', 2005) = SUM(S)(CV(),T BETWEEN 2003 AND 2004)
S('COTTON', 2005) = S('COTTON', 2004) + S('COTTON', 2003)
S('COTTON', 2005) = 21600 + 100 = 21700