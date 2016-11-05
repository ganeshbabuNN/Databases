		--lock1
declare
	x varchar2(100);
	y number;
begin
 	dbms_lock.allocate_unique('a',x); 		--A
 	dbms_output.put_line(x);
  	y := dbms_lock.request(x); 			--B
  	dbms_output.put_line(y);
  	dbms_lock.sleep(10); 				--C
  	y := dbms_lock.release(x); 			--D
  	dbms_output.put_line(y);
end;
/
