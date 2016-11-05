EXECUTE DBMS_FLASHBACK.ENABLE_AT_TIME(SYSDATE-2);

/*
the DBMS_FLASHBACK.ENABLE_AT_TIME() procedures perform as flash 
to the particular date. this procedures accepts a datatime as a parameter
SYSDATE-2 is passed to the procedures which means two days back
*/