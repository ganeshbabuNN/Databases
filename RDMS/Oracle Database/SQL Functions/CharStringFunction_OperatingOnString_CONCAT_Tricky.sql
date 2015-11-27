SELECT 'DROP TABLE'
  || table_name
  || ';' AS "Drop table commands"
FROM user_tables;