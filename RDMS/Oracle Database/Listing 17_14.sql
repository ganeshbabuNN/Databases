SELECT
REGEXP_INSTR('ABBCCD GFDAAA,http://www.oracle.com/products',
'http://([[:alnum:]]+\.?){3,4}/?',1,1) "REGEXP_INSTR" FROM DUAL;
