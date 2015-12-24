---view the recycle bin content
show recyclebin;

--to view the table put with double quotes
select * from "BIN$OISgM7cRQ1y8fhGmfosaig==$0";

--to restore the table back --issue the following command
FLASHBACK TABLE transactions to before drop;

--to restore the table back --with new name
FLASHBACK TABLE transactions to before drop RENAME TO newTransactions;

--disable the flash if required
EXECUTE DBMS_FLASHBACK.DISABLE();

---deleting the content in recycle bin if required
PURGE RECYCLEBIN;

--during the dropping with completely from recycle bin
DROP table transactions PURGE;