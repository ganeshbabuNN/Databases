 select b.batchcode, sum(f.amount) from feespaid f, enrollment e, batch b 		where f.rollno =e.rollno and b.batchcode=e.batchcode group by b.batchcode
/
