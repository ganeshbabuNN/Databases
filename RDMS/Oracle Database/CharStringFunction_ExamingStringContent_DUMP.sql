select DUMP(First_name),First_name from employees;

/*

Typ=1 Len=5: 69,108,108,101,110	Ellen

Exp
-Typ=1 is the column is varchar2
-len indicates the length of the value held in the column
-values such as 69,108,108,101,110 indicates the ASCII code of the value held in that column
*/