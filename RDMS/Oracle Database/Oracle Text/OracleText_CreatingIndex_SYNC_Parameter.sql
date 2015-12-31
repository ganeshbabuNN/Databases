--rebuilding the Index on SYNC
ALTER INDEX idxPatientsAHistory REBUILD ONLINE PARAMETERS('SYNC');

--or on SYNC using parameter using Parameter
create index idxPatientsAHistory
ON PatientsA(History)
INDEXTYPE IS CTXSYS.CONTEXT
PARAMETERS ('SYNC(ON COMMIT)');;