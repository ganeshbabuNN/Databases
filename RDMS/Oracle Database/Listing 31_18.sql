create or replace function crs_maxinc return varchar2 as
cname varchar2(30);
mamt batch.netincome %type;
ccode number(3);
begin
	select netincome,coursecode
    	into mamt,ccode
    	from batch
    	where netincome>=
    	(select max(netincome)
     	from batch);
    	select coursename
    	into cname
    	from course
    	where coursecode=ccode;
    	return(cname);
end crs_maxinc;
/
