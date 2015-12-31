--create index for CONTEXT and CTXCAT
create index idxPatientsAHistory
ON PatientsA(History)
INDEXTYPE IS CTXSYS.CONTEXT;

create index idxPatientsBHistory
ON patientsB(History)
INDEXTYPE IS CTXSYS.CTXCAT;
