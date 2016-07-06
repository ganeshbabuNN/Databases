SELECT REGEXP_SUBSTR('AbbccdGfdaaa,ccaa,bbag gg',
'd([[:lower:]]+){1,3},?',1,1) "REGEXP_subSTR" FROM DUAL;
