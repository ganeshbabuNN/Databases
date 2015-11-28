select c.citizenno,
       c.namedetails.first,
       c.persondetails.dateofbirth,
       e.*
from citizen c,table(c.employmentDetails) e;


/* employmentDetails is the nested table */