declare
   cnt number;
    batch_code enrollment.batchcode % type;
    cursor c1 is
    select * from
    enrollment;

			--  The program finds number of students in batch 10001
begin 
     cnt := 0;
     batch_code := 10001;
     for Z in c1 loop
 		if  Z.batchcode = 10001 then 
              	cnt := cnt +1;
     		end if;
     end loop;
end;
/
