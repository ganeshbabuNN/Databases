create or replace view vw_enroll  as
select to_char(enrollmentdate) dt,count(*) cnt
from enrollment
group by to_char(enrollmentdate)
/
