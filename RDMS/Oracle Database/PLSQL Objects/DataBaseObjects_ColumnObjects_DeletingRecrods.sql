---issue the delete statement
delete wroxbooks b
where b.bookdetails.bookName='Java for Beginner';

---check the amount
select b.bookdetails.bookname,b.bookdetails.price from wroxbooks b;