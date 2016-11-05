declare 
x number; 
begin 
	x:=dbms_pipe.create_pipe('pipe_msg',8192,false); 
 	dbms_output.put_line(x); 
end; 
/
