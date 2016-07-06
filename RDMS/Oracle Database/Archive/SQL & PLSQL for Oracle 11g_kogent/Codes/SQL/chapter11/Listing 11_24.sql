create or replace function calc_days(fdate date) return number as
begin
	if (to_char(fdate,’dy’) = ‘mon’) or (to_char(fdate,’dy’)=’tue’) then
		return(4);
	else
		return(2);
	end if;
end;
