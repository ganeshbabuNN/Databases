/*
I have 5 attribute columns corresponding 5 days of the week from Monday to Friday.
The attribute values can be Yes or No.
If Wednesday and Friday are set to Yes, I need a query to retrieve all the wednesdays and Fridays from a given date to sysdate.
Similarly, If Monday, Wednesday and Thursday are set to Yes, I need all the Mondays, Wednesdays and Thursday from a given date(passed as parameter) to sysdate.
*/
create table CVT_T1_DAYS as
(select '1' Mon, '0' Tue, '0' Wed, '1' Thu, '1' Fri from dual);

select dd, next_day(sysdate - (rownum * 7), dd) DATE_ 
from (SELECT 'MON' dd from CVT_T1_DAYS where mon = 1)
where to_date('&amp;indate', 'mm/dd/yyyy') &lt;= sysdate
      and   next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
connect by rownum &lt;= round((sysdate - to_date('&amp;indate', 'mm/dd/yyyy'))/7) 
        and next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
union
select dd, next_day(sysdate - (rownum * 7), dd) DATE_ 
from (SELECT 'TUE' dd from CVT_T1_DAYS where tue = 1)
where to_date('&amp;indate', 'mm/dd/yyyy') &lt;= sysdate
      and   next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
connect by rownum &lt;= round((sysdate - to_date('&amp;indate', 'mm/dd/yyyy'))/7) 
        and next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
union
select dd, next_day(sysdate - (rownum * 7), dd) DATE_ 
from (SELECT 'WED' dd from CVT_T1_DAYS where wed = 1)
where to_date('&amp;indate', 'mm/dd/yyyy') &lt;= sysdate
      and   next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
connect by rownum &lt;= round((sysdate - to_date('&amp;indate', 'mm/dd/yyyy'))/7) 
        and next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
union
select dd, next_day(sysdate - (rownum * 7), dd) DATE_ 
from (SELECT 'THU' dd from CVT_T1_DAYS where thu = 1)
where to_date('&amp;indate', 'mm/dd/yyyy') &lt;= sysdate
      and   next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
connect by rownum &lt;= round((sysdate - to_date('&amp;indate', 'mm/dd/yyyy'))/7) 
        and next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
union
select dd, next_day(sysdate - (rownum * 7), dd) DATE_ 
from (SELECT 'FRI' dd from CVT_T1_DAYS where FRI = 1)
where to_date('&amp;indate', 'mm/dd/yyyy') &lt;= sysdate
      and   next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
connect by rownum &lt;= round((sysdate - to_date('&amp;indate', 'mm/dd/yyyy'))/7) 
        and next_day(sysdate - (rownum * 7), dd) &gt;= to_date('&amp;indate', 'mm/dd/yyyy')
order by date_;
         
declare
v_datechosen date      := to_date('&amp;indate', 'mm/dd/yyyy');
v_weeksdiff  number    := round((sysdate - v_datechosen)/7);
v_sysdate    date      := sysdate;
 
v_dd char(5);
v_date date;
 
cursor dates is
        select dd, next_day(v_sysdate - (rownum * 7), dd) DATE_ 
        from (SELECT 'MON' dd from CVT_T1_DAYS where mon = 1)
        where v_datechosen &lt;= v_sysdate
        and next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        connect by rownum &lt;= v_weeksdiff and
                   next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        union
        select dd, next_day(v_sysdate - (rownum * 7), dd) DATE_ 
        from (SELECT 'TUE' dd from CVT_T1_DAYS where tue = 1)
        where v_datechosen &lt;= v_sysdate
        and next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        connect by rownum &lt;= v_weeksdiff and
                   next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        union
        select dd, next_day(v_sysdate - (rownum * 7), dd) DATE_ 
        from (SELECT 'WED' dd from CVT_T1_DAYS where wed = 1)
        where v_datechosen &lt;= v_sysdate
        and next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        connect by rownum &lt;= v_weeksdiff and
                   next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        union
        select dd, next_day(v_sysdate - (rownum * 7), dd) DATE_ 
        from (SELECT 'THU' dd from CVT_T1_DAYS where thu = 1)
        where v_datechosen &lt;= v_sysdate
        and next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        connect by rownum &lt;= v_weeksdiff and
                   next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        union
        select dd, next_day(v_sysdate - (rownum * 7), dd) DATE_ 
        from (SELECT 'FRI' dd from CVT_T1_DAYS where FRI = 1)
        where v_datechosen &lt;= v_sysdate
        and next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        connect by rownum &lt;= v_weeksdiff and
                   next_day(v_sysdate - (rownum * 7), dd) &gt;= v_datechosen
        order by date_; 
begin
        dbms_output.enable(1000000);
        dbms_output.put_line(v_weeksdiff||' '||to_date('&amp;indate', 'mm/dd/yyyy'));         
        open dates; 
        LOOP
          FETCH dates into v_dd, v_date;
          EXIT WHEN dates%NOTFOUND;
          dbms_output.put_line(v_dd ||'          '||v_date);
        END LOOP;         
        close dates;
end;