select Cast('2007-08-01' as date ) from dual; --NOT VALID
select Cast('2007-01-08' as date ) from dual;--NOT VALID
select Cast('08-apr-15' as date ) from dual;--VALID
select Cast('08-03-15' as date ) from dual;--NOT VALID
select Cast('08/APR/15' as date ) from dual;--VALID
select Cast('08/APR/15' as date ) from dual;--VALID
select Cast('08/APR/2015' as date ) from dual;--VALID
select Cast('08APR2015' as date ) from dual;--VALID
select Cast('08032015' as date ) from dual;--NOT VALID
select Cast('08-APR-2015 03:03:00 AM' as date ) from dual;--NOT VALID