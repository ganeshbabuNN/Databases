--Convert number to words
SELECT TO_CHAR (TO_DATE (1526, 'j'), 'jsp') FROM DUAL;

--Find string in package source code
--search a string foo_something in package source code
SELECT *
  FROM dba_source
 WHERE UPPER (text) LIKE '%FOO_SOMETHING%'
AND owner = 'USER_NAME';

--Convert Comma Separated Values into Table
WITH csv
     AS (SELECT 'AA,BB,CC,DD,EE,FF'
                   AS csvdata
           FROM DUAL)
    SELECT REGEXP_SUBSTR (csv.csvdata, '[^,]+', 1, LEVEL) pivot_char
      FROM DUAL, csv
CONNECT BY REGEXP_SUBSTR (csv.csvdata,'[^,]+', 1, LEVEL) IS NOT NULL;

--Find the last record from a table
SELECT *
  FROM employees
 WHERE ROWID IN (SELECT MAX (ROWID) FROM employees);
--or 
SELECT * FROM employees
MINUS
SELECT *
  FROM employees
 WHERE ROWNUM < (SELECT COUNT (*) FROM employees);

---Row Data Multiplication in Oracle
/*
This query use some tricky math functions to 
multiply values from each row. Read below article for more details.
*/
WITH tbl
     AS (SELECT -2 num FROM DUAL
         UNION
         SELECT -3 num FROM DUAL
         UNION
         SELECT -4 num FROM DUAL),
     sign_val
     AS (SELECT CASE MOD (COUNT (*), 2) WHEN 0 THEN 1 ELSE -1 END val
           FROM tbl
          WHERE num < 0)
  SELECT EXP (SUM (LN (ABS (num)))) * val
    FROM tbl, sign_val
GROUP BY val;

--Generating Random Data In Oracle

SELECT LEVEL empl_id,
           MOD (ROWNUM, 50000) dept_id,
           TRUNC (DBMS_RANDOM.VALUE (1000, 500000), 2) salary,
           DECODE (ROUND (DBMS_RANDOM.VALUE (1, 2)),  1, 'M',  2, 'F') gender,
           TO_DATE (
                 ROUND (DBMS_RANDOM.VALUE (1, 28))
              || '-'
              || ROUND (DBMS_RANDOM.VALUE (1, 12))
              || '-'
              || ROUND (DBMS_RANDOM.VALUE (1900, 2010)),
              'DD-MM-YYYY')
              dob,
           DBMS_RANDOM.STRING ('x', DBMS_RANDOM.VALUE (20, 50)) address
      FROM DUAL
CONNECT BY LEVEL < 10000;

--Random number generator in Oracle
--generate random number between 0 and 100
SELECT ROUND (DBMS_RANDOM.VALUE () * 100) + 1 AS random_num FROM DUAL;

--Check if table contains any data
/*
This one can be written in multiple ways. 
You can create count(*) on a table to know number of rows. But this query is more efficient given the fact that we are only interested in knowing if table has any data.
*/
SELECT 1
  FROM TABLE_NAME
 WHERE ROWNUM = 1;
