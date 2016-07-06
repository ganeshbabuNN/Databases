create or replace function getpcmpipe return tablepcm pipelined as
cursor c1 is 
select rollno,physics,chemistry,maths,name from pcm;
t tablepcm;
begin 
	for z in c1 loop
		pipe row (pcmobj(z.rollno,z.physics,z.chemistry,z.maths,z.name));
	end loop;
	return;
end;
/
