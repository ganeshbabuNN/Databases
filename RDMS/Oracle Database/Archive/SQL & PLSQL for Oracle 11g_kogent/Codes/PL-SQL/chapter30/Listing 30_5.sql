alter table enquiry add constraint pk_enq primary key (enquiryno)
/
declare
  	pk_violation exception;
  	pragma exception_init(pk_violation, -0001);
begin
  	insert into enquiry(enquiryno, enquirydate, fname) values(12345,'12-jul-			2003','anil');
exception
 	when pk_violation then
  	dbms_output.put_line('primary key violation');
end;
/
