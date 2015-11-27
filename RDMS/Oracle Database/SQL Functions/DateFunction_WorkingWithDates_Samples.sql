
Working with date samples
-------------------------

- return date should be calculated as home date plus 4 hours, 30 minutes and 40 seconds


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


