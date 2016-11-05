--get the admin privilage
grant create MATERIALIZED view to hr;

--first create a materialized log on master table
create MATERIALIZED view LOG ON employees; 


--create the materialized view
create MATERIALIZED view mv_pkemployees
REFRESH FAST 
START WITH SYSDATE
NEXT SYSDATE +2  
 WITH PRIMARY KEY
  AS Select * from employees;

--Now insert a data
insert  into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID,DEPARTMENT_ID) 
values(209,'ganesh', 'babu', 'gbabu@gmail.com','02-feb-15','IT_PROG',10);

-- check after two days.
select * from  mv_pkemployees;
/*
REFRESH options specifies
-the refresh method used by oracle to refresh data in materialized view
-Whether the view is primary key based or row-id based
-The time and interval at which view is to be refreshed.

SYSDATE+2
first copy of the materialized view is made of SYSDATE and the 
interval at which refresh has to be performed is every two days
this will indicate data will refresh every two days 

REFRESH METHOD
--------------
Fast Clause
	-The fast cluase refreshes by using the materizlied view logs to send the rows that have changed from master table 
to the materizlied view.
-for this clause, a materizlied view log need to be created for the master table.
*-it is not eligible for fast refresh if the defined subquery contains an analytic function

COMPLETE clause
	-it re-creates the entire materizlized view. Oracle performs a complete refresh even if a fast refresh is possible.

FORCE Clause
	-IT performs a fast refresh if one is possible or a complete refresh otherwise. if no refresh cluase is specified 
the FORCE clause if default

Refresh Timings
---------------
-the START WITH clause indicates when to perform the first replications from the master table to the local base table. it 
should evaluate to a future point in the time. the NEXT clause specifies the interval between refreshes
*/
  