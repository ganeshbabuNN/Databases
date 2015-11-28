---issue the update statement
update wroxbooks b
set b.bookdetails.price=865
where b.bookdetails.bookName='Hadoop for Java Developers';

---check the amount
select b.bookdetails.bookname,b.bookdetails.price from wroxbooks b;

