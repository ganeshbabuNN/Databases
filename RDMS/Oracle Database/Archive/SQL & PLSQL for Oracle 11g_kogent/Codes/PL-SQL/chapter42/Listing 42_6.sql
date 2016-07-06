begin
	deptree_fill('table','plsql','pls_test');
			--DEPTREE_FILL(objecttype,owner,objectname)
                   	--fills dependency information in table deptree_temptab
end;
/
select * from ideptree;
			--view ideptree operates on base table deptree_temptab to 					produce information of referred objects and dependant 					objects in tree structured form
