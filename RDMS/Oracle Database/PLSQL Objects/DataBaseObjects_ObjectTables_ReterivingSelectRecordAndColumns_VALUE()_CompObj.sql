
--comparing the object values
select value(b).iSBN,
       value(b).price,
       value(b).author.AuthorName,
       value(b).author.contactdetails.contactno,
       value(b).publisher.PublisherName,
       value(b).publisher.contactdetails.contactno       
from bestbooks b
where value(b).publisher=typpublisher('Wrox',
                         typContactDetails('CDIX', 'New Delhi', 
                         'Delhi', 'Delhi', 400098, 'India',
                         '91-022-43534534'));