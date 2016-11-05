--This is done from terminal 2

declare  
len number;  
str varchar2(100);  
status number;  
begin  
	status:=dbms_pipe.receive_message('send_message',1);  
	IF status = 0 
	THEN  
		DBMS_PIPE.UNPACK_MESSAGE(len);  
		DBMS_PIPE.UNPACK_MESSAGE(str);  
		dbms_output.put_line(str);  
	END IF;  
	if status != 0 
	then 
		dbms_output.put_line('No Message Available'||'  '||'status is'||' 				'||status); 
	end if; 
end; 
/
