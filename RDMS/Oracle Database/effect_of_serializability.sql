declare 
	x number; 
begin 
	set transaction isolation level serializable; 
  			--main transaction isolation level set to serializable 
  			--therefore it will not see the effect   made by 
  			--autonomous transaction 

  	auto2;		---inserts a row a=1 and b=5 in z 
 	select a into x from z where b =5;
			--main transaction resumes and throws an exception               
exception 
   	when no_data_found then 
  	dbms_output.put_line('main isolation level is serializable '); 
end;
/
