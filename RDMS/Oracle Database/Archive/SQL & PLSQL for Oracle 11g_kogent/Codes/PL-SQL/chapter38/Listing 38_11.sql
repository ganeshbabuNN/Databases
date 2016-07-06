--lock2 executed from another terminal
declare
 	x varchar2(100);
	y number;
begin
 	dbms_lock.allocate_unique('a',x);
 	dbms_output.put_line(x);
  	y := dbms_lock.request(x,dbms_lock.x_mode,1);
  	dbms_output.put_line(y);
  	dbms_lock.sleep(1);
  	y := dbms_lock.release(x);
  	dbms_output.put_line(y);
end;
/
