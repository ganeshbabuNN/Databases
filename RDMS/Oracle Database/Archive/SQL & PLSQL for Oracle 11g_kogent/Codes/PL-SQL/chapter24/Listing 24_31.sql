update batch
set netincome = amt
where batchcode = bcode;
calcamt ;                                  --procedure call
if SQL%NOTFOUND THEN
						--Refers to sql statement referred in 							--procedure not FOR UPDATE statement.
