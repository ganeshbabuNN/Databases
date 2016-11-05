SELECT PRODUCT,LOCATION,YEAR,S,GROWTH,PCT
FROM SALES1
WHEre LOCATION LIKE 'Pen%'
MODEL
--RETURN updated rows
PARTITION BY (PRODUCT)
DIMENSION BY (LOCATION,YEAR)
MEASURES (AMOUNT S,0 GROWTH,0 PCT) --IGNORE NAV
      (GROWTH['Pensacola',YEAR >2005]= (S[CV(),CV()]-S[CV(),CV()-1]),
       PCT['Pensacola',YEAR>2005]= (S[CV(),CV()-1])/S[CV(),CV()-1])
ORDER BY PRODUCT,LOCATION;

--GROWTH['Pensacola',YEAR >2005]= (S[CV(),CV()]-S[CV(),CV()-1]
-S[CV(),CV()] --> return the amount value copiying from LHS				 
-S[CV(),CV()-1] --> return the amount value of the location ='Pensacola' of the Preeding Year 
 assume cv()-1 --> 2006-1=2005, it will reference the 2005 cell of that amount.

--with the updated rows only
SELECT PRODUCT,LOCATION,YEAR,S,GROWTH,PCT
FROM SALES1
WHEre LOCATION LIKE 'Pen%'
MODEL
RETURN updated rows
PARTITION BY (PRODUCT)
DIMENSION BY (LOCATION,YEAR)
MEASURES (AMOUNT S,0 GROWTH,0 PCT) --IGNORE NAV
      (GROWTH['Pensacola',YEAR >2005]= (S[CV(),CV()]-S[CV(),CV()-1]),
       PCT['Pensacola',YEAR>2005]= (S[CV(),CV()-1])/S[CV(),CV()-1])
ORDER BY PRODUCT,LOCATION;


-- In a Normal SQL way
select a.product ,
       a.location,
       b.year,
       b.amount amt2006,
       a.amount amt2005,
       b.amount-a.amount growth,
       (b.amount-a.amount)/a.amount pct
from sales1 a, sales1 b
where a.year=b.year-1
and a.location like 'Pen%'
and b.location like 'Pen%'
and a.product=b.product 
order by product;


---Using ANY WildCard

SELECT PRODUCT,LOCATION,YEAR,S,GROWTH,PCT
FROM SALES1
--WHEre LOCATION LIKE 'Pen%'
MODEL
RETURN updated rows
PARTITION BY (PRODUCT)
DIMENSION BY (LOCATION,YEAR)
MEASURES (AMOUNT S,0 GROWTH,0 PCT) --IGNORE NAV
      (GROWTH[ANY,YEAR >2005]= (S[CV(),CV()]-S[CV(),CV()-1]),
       PCT[ANY,YEAR>2005]= (S[CV(),CV()-1])/S[CV(),CV()-1])
ORDER BY PRODUCT,LOCATION;


