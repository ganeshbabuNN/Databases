select COMPOSE('a'|| UNISTR('\0301')) c1,
       COMPOSE('a'|| UNISTR('\0302')) C2,
       COMPOSE('e'|| UNISTR('\0301')) C3
FROM DUAL;