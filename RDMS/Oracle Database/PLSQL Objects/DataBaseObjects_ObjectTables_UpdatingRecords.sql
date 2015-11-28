--updating the records
update bestbooks
set price = 865
where bookname='Java for Architect';

--check the table                         
select bookname,isbn,price from bestbooks b;

