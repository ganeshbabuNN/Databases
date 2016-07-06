--normal Decode functions
select decode('D','A', 'B','C') 
from dual;

--using function in PLSQL directly which will not work
begin
  if decode('D','A','B','C') = 'B'
  then
    logit('this is ganesh', 'D');
   end if;
end; 
/
