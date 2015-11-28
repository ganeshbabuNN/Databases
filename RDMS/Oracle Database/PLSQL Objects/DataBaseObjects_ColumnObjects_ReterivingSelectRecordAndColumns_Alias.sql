--Reterving selected records and column with more information inside the object
select b.bookdetails.bookName,b.bookdetails.ISBN
       ,b.bookdetails.Description,b.bookdetails.price
       ,b.qtysold,b.amtsold
from wroxbooks b
where b.bookdetails.bookName = 'Java for Beginner';