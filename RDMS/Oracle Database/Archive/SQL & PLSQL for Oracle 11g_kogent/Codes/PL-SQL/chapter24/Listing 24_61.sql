Insert into ............. 	-- A
Delete from .......... 	-- B
Update .............		-- C
Savepoint  SA;
Update ............		-- D
if not_proper_update then
	rollback to SA;
end if;

