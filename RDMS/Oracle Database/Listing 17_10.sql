SELECT
REGEXP_INSTR('Abbrd Hjhf Odffb, Bcff Rbbcffgr, Aa',
'[R|O][[:lower:]]{4}',2,1,1,'i') "REGEXP_INSTR"
FROM DUAL;
