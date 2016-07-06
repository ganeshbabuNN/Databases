declare 
x number; 
begin 
	x:=dbms_pipe.remove_pipe('pipe_msg'); 
	dbms_output.put_line(x); 
end; 
/
