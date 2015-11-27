--if no parameter, it will removes leading spaces from string
select ltrim(' ganesh') "ltrim2" from dual;
--if parameter, it will removes leading string characters from string
select ltrim('GANESH','G')"ltrim1" from dual;
--another good example, contining the leading characters
select ltrim('4523Books','0123456789') from dual;