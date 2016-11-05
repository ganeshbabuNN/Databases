select * from consumer where
    evaluate (consumer.interest,
              'propertytype=>''flat'',
               year=>2000,
               price=>140000,
               sqft=>500'
               ) = 1
/
