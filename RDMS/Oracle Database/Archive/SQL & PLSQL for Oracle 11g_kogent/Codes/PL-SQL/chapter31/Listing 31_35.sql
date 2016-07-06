create or replace procedure person_dlt_as(name varchar2) as
cursor c1 is
select * from enquiry
where fname like name;
begin
	for z in c1 loop
		dbms_output.put_line(z.ENQUIRYNO||'    '||
             z.FNAME||'    '||z.SNAME||'   '||
             z.COURSECODE||'   '||z.PLOTNO||'   '||z.STREET||'   '||
             z.CITY||'   '||z.PINCODE||'   '||z.PHONE||'   '||
             z.ENQUIRYDATE||'   '||z.REFCODE||'   '||z.EN_st);
    	end loop;
end person_dlt_as;
/
