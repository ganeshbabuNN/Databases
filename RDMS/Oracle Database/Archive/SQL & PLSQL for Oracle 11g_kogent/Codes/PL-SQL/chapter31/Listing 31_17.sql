create or replace procedure crs_income as
cursor c1 is
select sum(netincome) sumnet,coursecode
from batch
group by coursecode;
cursor c2 is
select coursecode,coursename
from course;
z1 c1%rowtype;
z2 c2%rowtype;
begin
	for z2 in c2 loop
     		for z1 in c1 loop
          		if z1.coursecode = z2.coursecode then
             		dbms_output.put_line(z2.coursename||'  							'||z1.sumnet);
          		end if;
      	end loop;
	end loop;
end crs_income;
/
