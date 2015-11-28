--all the columns
select publisherName,
       p.*
from publisherAddress,table(publisherAddress.address)P;

---specific to address only
select p.*
       from publisheraddress, table(publisheraddress.address) p;

/*
-Oracle automatically adds the column name as COLUMN_VALUE to the rows returned by the query
-COLUMN_VALUE is a pseudo column alias and it is automatically added when a collection contains data of one of the built-in data types
*/


