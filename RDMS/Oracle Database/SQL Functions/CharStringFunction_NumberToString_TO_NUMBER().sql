--without a format mast
select to_number('0210.723') "to_number" from dual;
--with format mask
select to_number('0210.723','9999.999') "to_number" from dual;
--not matched format mask
select to_number('0210.723','9999.99') "to_number" from dual;

