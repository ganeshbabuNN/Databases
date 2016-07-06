create or replace procedure initcaps as
begin
	update enquiry
	set fname = initcap(fname), sname = initcap(sname);
end initcaps;
/
