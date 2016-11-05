declare
	type refcursor is ref cursor;
	cursor c1 is
	select c.coursename,
	cursor(select b.batchcode 
	from batch b where b.coursecode=c.coursecode) bcode
	from course c; 
	b_cur refcursor;
	coursename course.coursename%type;
	batchcode batch.batchcode%type;

begin
	open c1;
	loop         						--for c1
		fetch c1 into coursename, b_cur;
		exit when c1%notfound;
		dbms_output.put_line('coursename '||coursename);
		loop  						-- for b_cur
			fetch b_cur into batchcode; -- no need to open
			exit when b_cur%notfound;

			dbms_output.put_line('batchcode '||batchcode);
		end loop;    					--of b_cur

	end loop; 						-- end of c1
	close c1;
end;
