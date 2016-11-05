--Year - SYYYY, YYY,YEAR,SYEAR,SYEAR,YYY,YY,YY  -rounds up on july 1st
select ROUND(TO_DATE(SYSDATE),'YYYY') "year" from dual;
