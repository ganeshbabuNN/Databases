--SQL commands
SQL> select empno,ename,sal
  2  from emp
  3  where empno=7521;

     EMPNO ENAME             SAL
---------- ---------- ----------
      7521 WARD             1250

/*
SQL plus automatically increments the line number when ENTER is pressed.The line 1 can be made the current line by entering 1 at the prompt as follows
*/
SQL> 1  --this makes the first line that holds the SQL command available.
  1* select empno,ename,sal

SQL> append , JOB  --this adds "JOB"to the end of the command line.
  1* select empno,ename,sal, JOB

--check it is added
SQL> list
  1  select empno,ename,sal, JOB
  2  from emp
  3* where empno=7521  --

--Run and check it is added
SQL> runthe astrisk[*] indicates the current line.
  1  select empno,ename,sal, JOB
  2  from emp
  3* where empno=7521

     EMPNO ENAME             SAL JOB
---------- ---------- ---------- ---------
      7521 WARD             1250 SALESMAN

SQL> CHANGE /EMPNO=7521/EMPNO=7934 -- this replaces "7521"to 7934, hence the third line will be added
  3* where EMPNO=7934

SQL> RUN     ---this executes the command that is available in the buffer
  1  select empno,ename,sal, JOB
  2  from emp
  3* where EMPNO=7934

     EMPNO ENAME             SAL JOB
---------- ---------- ---------- ---------
      7934 MILLER           1300 CLERK


SQL> /  -- this operates same as teh RUN command.
  1  select empno,ename,sal, JOB
  2  from emp
  3* where EMPNO=7934

     EMPNO ENAME             SAL JOB
---------- ---------- ---------- ---------
      7934 MILLER           1300 CLERK
