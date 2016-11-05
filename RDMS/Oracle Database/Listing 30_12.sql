create or replace procedure insenquiry (penquiryno in number, pfname in 		varchar2, penqdate in date) as enqno number;
begin
	enqno := penquiryno;
                              	--some more work a

	loop 
             begin   --block b
			savepoint startpt;
                     		--some more work b
			insert into enquiry(enquiryno, fname, enquirydate) values 					(enqno, pfname, penqdate);
			exit;
		exception
			when dup_val_on_index then
			enqno := enqno+1;
                    rollback to startpt;
		end;
	end loop;
end;
/	
