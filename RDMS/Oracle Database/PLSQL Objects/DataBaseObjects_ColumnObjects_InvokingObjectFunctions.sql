--table
select * from wroxbooks;
--invoking the member functions
select b.bookdetails.ISBN,b.bookdetails.price,
       b.bookdetails.getBookPrice(10) ---invoking object functions
from wroxbooks b;