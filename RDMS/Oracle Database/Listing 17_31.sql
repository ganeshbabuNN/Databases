SELECT  REGEXP_replace('class,project,workspace',
'(,)','\1s ') "REGEXP_replace" FROM DUAL;
