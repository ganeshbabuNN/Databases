SELECT REGEXP_replace('class,project,workspace,',
'(,)','R\1 ') "REGEXP_replace" FROM DUAL;
