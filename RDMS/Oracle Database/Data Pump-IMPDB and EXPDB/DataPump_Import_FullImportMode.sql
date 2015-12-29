--Locate the  DB Directory objects where the DUMP file located
CREATE DIRECTORY MyBackups AS '/MyData/MyBackups'

--Give appropriate permissions for the Directory
GRANT READ,WRITE ON DIRECTORY MyBackups TO ganesh,hr;

--privileges for the full database mod
GRANT IMP_FULL_DATABASE to ganesh1,hr;

--using the FULL Database Mode
IMPDP SYSTEM/<Password> DIRECTORY=MyBackups DUMPFILE=MyBackUp01.dmp FULL=y LOGFILE=MyBackUp01.log
