cursor c1 ( ccode number default 10) is 
select * from batch
where coursecode = ccode;
