select ename,mname,salary,level from emp2 start with mname='abhay' connect 		
by prior ename=mname;