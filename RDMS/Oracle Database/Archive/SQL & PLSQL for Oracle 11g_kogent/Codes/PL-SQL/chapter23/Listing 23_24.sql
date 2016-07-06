declare
 	s1 varchar2(20) := 'abbdgbfbghb';
 	c char := 'b';
 	i number:=1;
 	s2 varchar2(1);
 	d char := '#';
 	s4 varchar2(24):='';
 	len number:=0;
begin
 	len:= length(s1);
  	while(i<= len) loop
  		s2 := substr(s1,i,1);
  		if(s2=c) then
   			s2:= d;  
  		end if;
   		s4 := s4||s2; 
   		i:= i+1;
  	end loop; 
   	dbms_output.put_line(s4);
end;
/
