create or replace procedure incomplete_crs_batch as
   cursor c1 is
   select substr(to_char(rollno),1,5) batch,count(*) cnt
   from installment ins
   where installmentstatus = 'N'
   and installmentdate < sysdate
   group by substr(to_char(rollno),1,5);
 begin
   for z in c1 loop
        dbms_output.put_line(z.batch||'    '||z.cnt);
    end loop;
 end incomplete_crs_batch;
 /
