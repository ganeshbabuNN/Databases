create or replace procedure stat_enq as
tmpamt number;
i number;
inc number;
incamt number;
cnt number;
begin
	i := 0;
   	tmpamt := 0;
   	inc := 5;
   	while i < 30 loop
       	select count(*) into cnt from enquiry
       	where to_char(enquirydate,'monyy')=to_char(sysdate,'monyy')
       	and to_number(to_char(enquirydate,'dd'))
       	between i and inc;
       	dbms_output.put_line(i||'    '||inc||'    '||cnt);
       	i := inc+1;
       	tmpamt := tmpamt + 5;
       	inc := tmpamt;
   	end loop;
end stat_enq;
/
