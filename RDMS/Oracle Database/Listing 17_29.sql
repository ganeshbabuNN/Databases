SELECT REGEXP_REPLACE('(ABBCD)(HJHF)(SDFFB BCFF FBBCFFGGR)',
'(B).(C)','\2-\1') POS FROM DUAL;
