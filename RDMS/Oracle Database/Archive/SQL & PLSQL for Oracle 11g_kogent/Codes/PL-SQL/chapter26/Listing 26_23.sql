create or replace procedure instr_ex is
	loc    		bfile;
	pattern        raw(32);
	position       integer;
begin
      select  tab.ad_pic into loc from abc tab
	where pmtab.prod_id = 1101 and tab.ad_id = 11002;
  	dbms_lob.open(loc, dbms_lob.lob_readonly);
  	position := dbms_lob.instr(loc, pattern, 1, 2);
  	dbms_lob.close(loc);
end;
/