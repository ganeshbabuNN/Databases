SELECT REGEXP_INSTR('Abbcd Hjhf Sdffb, Bcff Gbbcffgr, aa',
'[R|O][[:lower:]]{4}', 2, 2, 1, 'i') "REGEXP_INSTR" 
FROM DUAL;
