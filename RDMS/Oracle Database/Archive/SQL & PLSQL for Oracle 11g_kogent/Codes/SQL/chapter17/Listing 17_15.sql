SELECT
REGEXP_INSTR('ABBCCD     GFDAAA,http://www.rediff.mail.com.com/products',
'http://([[:lower:]]+\.?){3,4}/?',1,1,1) "REGEXP_INSTR" FROM DUAL;
