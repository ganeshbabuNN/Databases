--object table details
select b.iSBN,
       b.price,
       b.author.AuthorName,
       b.publisher.PublisherName
from bestbooks b
where b.bookname='Java for Beginner';

--object table into object details
select b.iSBN,
       b.price,
       b.author.AuthorName,
       b.author.contactdetails.contactno,
       b.publisher.PublisherName,
       b.publisher.contactdetails.contactno       
from bestbooks b
where b.bookname='Java for Beginner';