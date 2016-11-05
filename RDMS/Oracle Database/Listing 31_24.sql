create or replace function totenq_advcode(adv number) return number as
tenq number;
begin
	select count(*)
	into tenq from enquiry
	where refcode = adv;
	return(tenq);
end totenq_advcode;
/
