create or replace procedure incomplete_crs_std as
   cursor c1 is
   select fname
   from vw_enqenrl_student vw,installment ins
   where installmentstatus = 'N'
   and installmentdate < sysdate
   and vw. rollno = ins. rollno;
begin
    for z in c1 loop
        dbms_output.put_line(z.fname);
    end loop;
end incomplete_crs_std;
/
