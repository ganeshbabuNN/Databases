--for triming leading and trailing spaced 
select TRIM(' ganesh and vedha   ') "trim spaces" from dual;
--for leading position
select trim(LEADING 'x' from 'xxxxGaneshOracleProfessionalsxxx') "remove prefixes"from dual;
--for Trailing position
select trim(TRAILING 'x' from 'xxxxGaneshOracleProfessionalsxxx') "removes suffixes"from dual;
--for BOTH
select trim(BOTH 'x' from 'xxxxGaneshOracleProfessionalsxxx') "remove prefixes and suffixes"from dual;

