select value(b).iSBN,
       value(b).price,
       value(b).author.AuthorName,
       value(b).author.contactdetails.contactno,
       value(b).publisher.PublisherName,
       value(b).publisher.contactdetails.contactno       
from bestbooks b
where value(b).bookname='Java for Beginner';