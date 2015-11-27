select  EXTRACT(YEAR FROM DATE'2013-05-13') "Year",
        EXTRACT(MONTH FROM SYSDATE) "Month"
from dual;