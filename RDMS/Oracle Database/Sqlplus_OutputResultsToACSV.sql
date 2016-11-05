/*Suppress page hader, titles and all informations */
SET PAGESIZE 0
/* switch off the SQL text before/after any variable substitutions */
SET VERIFY OFF
/*set line size,make this as big as desired*/
SET LINES 700
/*Dekete any blank spaces at end of each spooled line */
SET TRIMSPOOL ON
/* Switch off the lines number display returned by the query */
SET FEEDBACK OFF
/* switch off SELECT output to the screen */
SET TERMOUT OFF
/*separate each column by comma character (CSV output) */
SET COLSEP ','
/* PUT the SELECt output into a file */
SPOOL C:\depCSV.csv
SElect * from departments;
SPOOL OFF

--CSV File will be available at C:\
