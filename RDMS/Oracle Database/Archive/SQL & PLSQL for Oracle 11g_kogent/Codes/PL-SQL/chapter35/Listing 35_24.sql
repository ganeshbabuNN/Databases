declare
jobno number; 
begin 
	dbms_job.submit(jobno, 
     'insert into emp1(empno,salary) 
     values(1,2000);',sysdate,'sysdate+1/24'); 
     commit;
     dbms_output.put_line(jobno); 
end;
/
