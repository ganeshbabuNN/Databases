create or replace procedure exp_details as
    cursor c1 is
    select * from expmaster;
begin
    for z in c1 loop
        dbms_output.put_line(z.expcode||'   '||z.expname
                    ||'   '||z.exptype||'   '||z.netexp);
    end loop;
end exp_details;
/
