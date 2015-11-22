-- <> not equal to
select * from bankmaster where accountno <> 2;
-- != not equal to
select * from bankmaster where accountno != 2;
-- > greather then
select * from bankmaster where accountno > 2;
-- < not equal to
select * from bankmaster where accountno < 2;
-- >=		Greather then or equal to
select * from bankmaster where accountno >= 2;
-- <=		Less then or equal to
select * from bankmaster where accountno <= 2;
--BETWEEN		between an inclusive range
select * from bankmaster where accountno BETWEEN 1 AND 2;
--LIKE		Search for a pattern
select * from bankmaster where firstname LIKE 'G%';
--another way
select * from bankmaster where firstname LIKE '%a%';
--IN 		Used if the exact column values to be returned are known.
select * from bankmaster where accountno IN (1,2);