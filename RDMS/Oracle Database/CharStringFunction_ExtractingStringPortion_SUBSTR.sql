--with startposition and length
select SUBSTR('how are you ganesh',6,2) from dual;
--without length , it returns all the remaining character
select SUBSTR('how are you ganesh',6) from dual;
--with startposition and length
select SUBSTR('how are you ganesh',1,4) from dual;
--counting backwards
select SUBSTR('how are you ganesh',-4,3) from dual;
--counting backwards
select SUBSTR('how are you ganesh',-10,3) from dual;
