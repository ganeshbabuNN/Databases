SET SERVEROUTPUT ON
SET VERI OFF FEED OFF  ---this spec is handy on platform such as NT with no OERR support
PROMPT Lookup Oracle error messages:
PROMPT
PROMPT Please enter error numbers as negatives. E.g. -1
PROMPT
EXEC DBMS_OUTPUT.PUT_LINE('==> ' || SQLERRM(&errno));
SET VERI ON FEED ON
UNDEF ERRNO