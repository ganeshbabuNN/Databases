select ROWID,first_name from employees;

/* output
AAAR5kAAFAAAADNABK	Ellen
AAAR5kAAFAAAADNABC	Sundar
AAAR5kAAFAAAADNAAe	Mozhe
AAAR5kAAFAAAADNAAF	David
AAAR5kAAFAAAADOAAG	Hermann
AAAR5kAAFAAAADNAAQ	Shelli
AAAR5kAAFAAAADNABD	Amit
AAAR5kAAFAAAADNABI	Elizabeth

*/


/*
let us the first rowid AAAR5kAAFAAAADNABK
-AAAR5k it represent the data object number that identifies the db segement. schema objects in the same segement, such as  cluster of tables, have the same data object number.
-AAF represents file number that identifies the data file, which contains the row. file number unique within a database
-AAAADN- represents the block number that identifies that data block, which contains the row. BLOCK numbers are relative are relative to their data file, not their tablespace
-ABK represents rwo number that identifies the row in the block
*/