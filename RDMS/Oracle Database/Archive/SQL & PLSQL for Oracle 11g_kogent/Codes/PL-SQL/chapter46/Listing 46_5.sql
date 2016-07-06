create or replace function actprice(year number,price number)    
return number is
begin
   return price - (extract(year from sysdate)-year)*0.01*price;
end actprice;
/
