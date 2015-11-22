--get the privilage for creating the directory from dba
grant CREATE ANY DIRECTORY to HR;

--create the directory path
CREATE OR REPLACE DIRECTORY ExtTables AS 'C:\ExternalTables';

/*
-the directory [ in this case ExternalTables] should physically exists on the HDD.
-the file [ganesh.txt] should physically exists [ in this case under C:\ExternalTables] on the HDD.
*/

