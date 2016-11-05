declare 
	type obj1 is table of obj; 
	z obj1:=obj1(obj(1),obj(2),obj(3),obj(4)); 
	type obj2 is varray(5) of integer; 
	x obj2:=obj2(1,2,3); 
begin 
	forall i in z.first..z.last 
	insert into objtable values(z(i));		--Inserts the values in table 								--of objects objtable. 

	forall i in x.first..x.last 
	insert into emp_table values(x(i),'amit');	--Inserts the values in 									--emp_table 	
	forall i1 in x.first..x.last 
	delete emp_table where num=x(i1);		--Deletes all the records of 									--emp_table 
	if sql%bulk_rowcount(2)=0       
	then 
		dbms_output.put_line('value does not exist'); 
	else 
		dbms_output.put_line('value exist'|| sql%bulk_rowcount(2)); 
	end if; 
	forall i2 in x.first..x.last 
	update emp_table set num=x(i2) where num=x(i2); 

 	if sql%bulk_rowcount(2)=0 
	then						--A 
		dbms_output.put_line('value does not exist'); 
	end if; 
end;  
/
