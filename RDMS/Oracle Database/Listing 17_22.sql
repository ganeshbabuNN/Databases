SELECT REGEXP_SUBSTR('ABBCCDGFDAAA,CCAA,BBAG GG',
'D([[:alnum:]]+,?){1,2}',1,1) "REGEXP_SUBSTR" FROM DUAL
