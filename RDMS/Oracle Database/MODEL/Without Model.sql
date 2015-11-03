select location,amount
from sales
where amount IN ( select max(amount) from sales group by location);

--the above query returns the based on "other rows" concept
--In this statement it involed creating the virtual table of grouped maximum values and then generates resultset based on virtual table.
--this can be eliminated by MODEL or SPREADSHEET Clause which interacts with row data without explicity creating a virtual table.
