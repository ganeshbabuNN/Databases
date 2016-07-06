declare  
	type numid is table of number(5) index by binary_integer;  
	type nameid is table of varchar2(15) index by binary_integer;  
	nums  numid;  
	names nameid;  
	t1 number(5);  
	t2 number(5);  
	t3 number(5);  

procedure gettime (t out number) is  
begin select to_char(sysdate,'sssss') into t from dual; 
end;  
begin  
	for j in 1..5000 loop    
	      nums(j) := j;  
	      names(j) := 'emp no ' || to_char(j);   
     	end loop;  
    	gettime(t1);  
     	for i in 1..5000 loop  		--using  for  loop  
	      insert into emp_table values (nums(i), names(i));  
     	end loop;  
     	gettime(t2);  
    	forall i in 1..5000  			--a  
     		insert into emp_table values (nums(i), names(i));  
     	gettime(t3);  
     	dbms_output.put_line('the execution time');  
     	dbms_output.put_line('-----------------');  
     	dbms_output.put_line('for loop: ' || to_char(t2 - t1));  
     	dbms_output.put_line('forall:   ' || to_char(t3 - t2));  
     forall i in 1..5000  			--b  
     		insert into emp_table values (nums(i), names(i));  
end;  
/
