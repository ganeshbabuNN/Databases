create or replace trigger ins_course
before insert on course
for each row
declare
begin
	if (:new.coursecode <10) or (:new.coursecode>99) then
		raise_application_error (-20110,' invalid length') ;
	end if;
end;
/
