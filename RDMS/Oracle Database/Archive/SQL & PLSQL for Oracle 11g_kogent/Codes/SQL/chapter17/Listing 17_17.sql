SELECT REGEXP_SUBSTR('ABBCCD GFDAAA,http://www.rediff.mail.com/products',
‘http://([[:lower:]]+\.?){1,3}/?',1,1) "REGEXP_SUBSTR" FROM DUAL;
