select product,t,org,x projected
from sales1
model
return updated rows
Dimension by (product,amount org,year t)
measures (amount x)
rules (x['Lumber',ANY,2005] order by t = x[cv(),cv(),cv()]*1.1,
       x['Lumber',ANY,2006] =x[cv(),cv(),cv()]*1.2)
order by t;

taking the alias from the measures 
--we have computed "projected " based on "amount" ( aliased by x)
not working
select product,t,x ORIG,projected
from sales1
model
return updated rows
--partition by (location)
dimension by (product,year t)
measures (amount x,0 projected)
rules 
       (projected['Lumber',2005] = x[cv(),cv()]*1.1,
       projected['Lumber',2006] = x[cv(),cv()]*1.2)
order by t;


Now ordering on the LHS where computations should happen on Projected column only
-not working
select product,t,x ORIG,projected
from sales1
model
return updated rows
--partition by (location)
dimension by (product,year t)
measures (amount x,0 projected)
rules 
       (projected['Lumber',2005] = x[cv(),cv()]*1.1,
       projected['Lumber',2006] = x[cv(),cv()]*1.2)
order by t;

ordering the LHS
select product,t,x orig,projected
from sales1
model
return updated rows
--partition by (location)
dimension by (product,year t)
measures (amount x,0 projected)
rules 
       (projected['Lumber',2006] = projected[cv(),cv()-1]*1.2,
       projected['Lumber',2005] = projected[cv(),cv()]*1.1)
order by t;


Using AUTOMATIC ORDER in RULES
-------------------------------
-By the problem you are using on the above samples can be handled by AUTOMATIC ORDER
- this is well tell the SQL that you want to compute these values automatically. let SQL engine
determine which need to be computed first.the phrase AUTOMATIC ORDER may be put in the RULES like this.

select product,t,x orig,projected
from sales1
model
return updated rows
partition by (location)
dimension by (product,year t)
measures (amount x,0 projected)
rules AUTOMATIC ORDER
       (projected['Lumber',2006] = projected[cv(),cv()-1]*1.2,
       projected['Lumber',2005] = x[cv(),cv()]*1.1)
order by t;


SEQUENTIAL ORDER
----------------
-if you actually wanted your RULES to be evaluated in the order in which they are written, then appropriate phrase would be SEQUENTIAL ORDER

select product,t,x orig,projected
from sales1
model
--return updated rows
partition by (location)
dimension by (product,year t)
measures (amount x,0 projected)
rules SEQUENTIAL ORDER
       (projected['Lumber',2006] = projected[cv(),cv()-1]*1.2,
       projected['Lumber',2005] = x[cv(),cv()]*1.1)
order by t;

