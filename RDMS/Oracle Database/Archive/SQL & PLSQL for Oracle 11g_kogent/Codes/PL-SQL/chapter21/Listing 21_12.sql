create or replace Function calcourseamt (code number) return number as
netincomeamt number;
begin
	select sum(netincome)
	into netincomeamt from batch
	where coursecode = code;
	return (netincomeamt);
end calcourseamt;
/
