declare
	cursor c1(psubject varchar2,plmarks number,phmarks number) is
	select rn,subject,marks from student
	where subject=psubject and marks between plmarks and phmarks ;
	cursor c2 is select subject from student;
begin
	for w in c2 loop
 		for z in c1(w.subject,50,90) loop
    			dbms_output.put_line('subject is '||w.subject||' rn is 					'||to_char(z.rn));
 		end loop;
	end loop;
end;
/
