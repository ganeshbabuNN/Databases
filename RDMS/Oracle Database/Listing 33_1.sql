create or replace trigger batch_ins_trg1					--A
before insert on batch 							--B
for each row									--C
declare 									--G
ccode number(2); 

begin 									--H
	If (length(:new.batchcode)!=5 )   					--D
	then
		raise_application_error(-20110,'Invalid length');
	end if;
	ccode:= :new.batchcode/1000;
	if not(pkgbatchcode.validate_batchcode(:new.batchcode)) then	--F
		raise_application_error(-20111,'invalid batchcode') ;
	end if ;
end;
/
insert into batch values (10,10,'12-jul-2003',50,3000,12000,15000,1)
