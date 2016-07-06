create or replace type body cust_type as
member function getname return varchar2 is
begin
return(upper(cust_name));
end;
end;
/
