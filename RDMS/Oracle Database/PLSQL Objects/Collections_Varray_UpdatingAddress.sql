--updating the specific record.
UPDATE publisheraddress
SET address= Typaddress('ABC ESCC,EWREW road,kurla west,bangalore 23032',
                        'ABC ESCC,ewrrw road,kurla west,bangalore 23032')
where publishername ='Wrox';