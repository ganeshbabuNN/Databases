create or replace function getpcm return tablepcm as
cursor c1 is 
select rollno, physics, chemistry, maths, name from pcm;
t tablepcm;
begin
 	t := new tablepcm();
	for z in c1 loop
		t.extend;
		t(t.last) := pcmobj(z. rollno,z. physics,z. chemistry,z. 					maths,z.name);
	end loop;
	return(t);
end;
