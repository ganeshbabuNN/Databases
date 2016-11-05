passwd_name ( 
userid_parameter IN VARCHAR(30), 
password_parameter IN VARCHAR (30), 
old_password_parameter IN VARCHAR (30) 
) 
RETURN BOOLEAN


create or replace function fnpassword
( userid varchar2,
 oldpasswd varchar2,
newpasswd varchar2) return boolean as
begin
if (substr(oldpasswd,1,1)=substr(newpasswd,1,1)) then
 return(true);
else
 return(false);
end if;
end;
/