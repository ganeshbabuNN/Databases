create or replace function count_person_asV
return number as cnt number;
begin
	select count(fname)
	into cnt from enquiry
	where fname like 'V%';
	return cnt;
end count_person_asV;
/
