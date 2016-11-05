--for a string
select vsize('ganesh') from dual;
--for no size
select vsize('') from dual;
-- space padded
select vsize(' ') from dual;
--for NULL as a string
select vsize('NULL') from dual;
--for NULL
select vsize(NULL) from dual;