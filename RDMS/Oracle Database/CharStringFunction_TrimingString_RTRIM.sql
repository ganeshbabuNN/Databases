--if no parameter, it will removes leading spaces from string from right
select RTRIM('ganesh ') "RTRIM1" from dual;
--if parameter, it will removes leading string characters from string
select RTRIM('GANESHGGGGGGGGGGGG','G')"RTRIM" from dual;
--another good example, contining the leading characters
select RTRIM('Books4523','0123456789') from dual;