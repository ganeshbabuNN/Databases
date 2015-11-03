--problem is greatest value for each partitioned product value in penscola rows

select product,location,most
from sales
spreadsheet
partition by (product)
dimension by (location)
measures (amount most) IGNORE NAV
RULES  (most['Pensacola']=greatest(most['Mobile'],most['Pensacola']))
order by product,location;

--Blueberries had no counterpart  and hence the greatest value occurred in the blueberries partition location ='Penscola' and get 9000
--For Cotton, the mobile value is greater then the pensacola value and hence mobile value for the Pensacola value and hence mobile value for the cotton partition was reported in pensala row
-For lumber, the Penscola row is already greater then mobile  and hence no change in value 
-For plastic, there is no value for pensacola and ***hence a new row was created to show Pensacola with mobile value for the product.
