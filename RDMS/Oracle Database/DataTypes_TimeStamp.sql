select cast('23-mar-15 08:30:55.1245' as timestamp) from dual;--VALID
select cast('23-mar-15 08:30:55.1245 AM' as timestamp) from dual; --VALID
select cast(timestamp '2015-03-15 08:30:55.1245' as timestamp) from dual; --VALID