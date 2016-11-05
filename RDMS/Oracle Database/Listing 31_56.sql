create or replace procedure std_notenroll as
   cursor c1 is select enq.fname name
   from batch bat,enquiry enq
   where en_st = 'n'
   and substr(to_char(bat.batchcode),1,2)=to_char(enq.coursecode)
   and enq.enquirydate > (bat.startingdate)-15;
begin
   for z in c1 loop
       dbms_output.put_line(z.name);
   end loop;
end std_notenroll;
/
