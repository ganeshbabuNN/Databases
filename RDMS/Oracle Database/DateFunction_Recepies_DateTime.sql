--return date should be calculated as home date plus 4 hours, 30 minutes and 40 seconds

update home
Set homedate= rentaldate + 4/24+1/48+40/86400
where homeno=13


--Tommorrow /next day
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+1,'DD-MON-YYYY HH:MI:SS') as "Tommorrow/Next Day"
from dual;
--Seven days from now
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+7,'DD-MON-YYYY HH:MI:SS') as "Seven days from now"
from dual;
--One Hour from now
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+1/24,'DD-MON-YYYY HH12:MI:SS AM') as "One Hour from now"
from dual;
--three hours from now
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+3/24,'DD-MON-YYYY HH12:MI:SS AM') as "three hours from now"
from dual;
--A half hour from now
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+1/48,'DD-MON-YYYY HH12:MI:SS AM') as "A half hour from now"
from dual;
--ten minutes from now
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+10/1440,'DD-MON-YYYY HH12:MI:SS AM') as "ten minutes from now"
from dual;
--Thirty seconds from now
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+30/86400,'DD-MON-YYYY HH12:MI:SS AM') as "Thirty seconds from now"
from dual;
--tommorrow at 12 midnight
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(SYSDATE+1,'DD-MON-YYYY HH12:MI:SS AM') as "tommorrow at 12 midnight"
from dual;
--tommorrow at 8 AM
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(TRUNC(SYSDATE+1)+8/24,'DD-MON-YYYY HH12:MI:SS AM') as "tommorrow at 12 midnight"
from dual;
--Next Monday at 12:00 noon
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(NEXT_DAY(SYSDATE,'MONDAY')+12/24,'DD-MON-YYYY HH12:MI:SS AM') as "Next Monday at 12:00 noon"
from dual;
--first day of the next month at 12 midnight --Not working
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(TRUNC(LAST_DAY(SYSDATE)+1),'DD-MON-YYYY HH:MI:SS') as "1st of month at 12 midnight"
from dual;
--the next monday , wednesday or friday at 9 AM
select TO_CHAR(SYSDATE,'DD-MON-YYYY HH:MI:SS') as "Current Date",
      TO_CHAR(TRUNC(LEAST(NEXT_DAY(SYSDATE,'MONDAY'),
      NEXT_DAY(SYSDATE,'WEDNESDAY'),
      NEXT_DAY(SYSDATE,'FRIDAY')))+(9/24),'DD-MON-YYYY HH:MI:SS') as "the nex Mon,wed or fri @9 AM"
from dual;

--Get the first day of the month
SELECT TRUNC (SYSDATE, 'MONTH') "First day of current month" FROM DUAL;

--Get the last day of the month
SELECT TRUNC (LAST_DAY (SYSDATE)) "Last day of current month"  FROM DUAL;

--Get the first day of the Year
SELECT TRUNC (SYSDATE, 'YEAR') "Year First Day" FROM DUAL;

--Get the last day of the year
SELECT ADD_MONTHS (TRUNC (SYSDATE, 'YEAR'), 12) - 1 "Year Last Day" FROM DUAL;

--Get number of days in current month
SELECT CAST (TO_CHAR (LAST_DAY (SYSDATE), 'dd') AS INT) number_of_days FROM DUAL;

--Get number of days left in current month
SELECT SYSDATE,
       LAST_DAY (SYSDATE) "Last",
       LAST_DAY (SYSDATE) - SYSDATE "Days left"
  FROM DUAL;

--Get number of days between two dates
SELECT ROUND ( (MONTHS_BETWEEN ('01-Feb-2014', '01-Mar-2012') * 30), 0)
          num_of_days
  FROM DUAL;
  
SELECT TRUNC(sysdate) - TRUNC(e.hire_date) FROM employees;

--Display each months start and end date upto last month of the year
SELECT ADD_MONTHS (TRUNC (SYSDATE, 'MONTH'), i) start_date,
       TRUNC (LAST_DAY (ADD_MONTHS (SYSDATE, i))) end_date
  FROM XMLTABLE ( 'for $i in 0 to xs:int(D) return $i'
          PASSING XMLELEMENT (d,
                     FLOOR (MONTHS_BETWEEN (ADD_MONTHS (TRUNC (SYSDATE, 'YEAR') - 1, 12),SYSDATE)))
          COLUMNS i INTEGER PATH '.');

--Get number of seconds passed since today (since 00:00 hr)
SELECT (SYSDATE - TRUNC (SYSDATE)) * 24 * 60 * 60 num_of_sec_since_morning
  FROM DUAL;

--Get number of seconds left today (till 23:59:59 hr)
SELECT (TRUNC (SYSDATE+1) - SYSDATE) * 24 * 60 * 60 num_of_sec_left
  FROM DUAL;
          
