--Locate the  DB Directory objects where the DUMP file located
CREATE DIRECTORY MyBackups AS '/MyData/MyBackups'

--Give appropriate permissions for the Directory
GRANT READ,WRITE ON DIRECTORY MyBackups TO ganesh1,hr;

--privileges for the full database mod
GRANT IMP_FULL_DATABASE to ganesh1,hr;

--using the schema import mode for HR where already a Dump set is available with schema specific
IMPDP SYSTEM/<password> DIRECTORY=MyBackups DUMPFILE=MyBackup01.dmp LOGFILE=Mybackup02.log SCHEMAS=HR

--using the schema import mode for HR where already a Dump set is available with schema specific
IMPDP SYSTEM/<password> DIRECTORY=MyBackups DUMPFILE=MyBackup01.dmp LOGFILE=Mybackup02.log SCHEMAS=HR,SH

--directly to the schema
IMPDP ganesh2/Ga55word DIRECTORY=MyBackups DUMPFILE=HRDB.dmp


