--NDS just simplies the code required to run the DYnamic SQL
--NDS was been said it is more faster then the DBMS SQL, but not really true
--but there are limitations where DBMS SQL is a better choice
--in most of the NDS , you see EXECUTE IMMDIATE apart from using the DBMS SQL

BEGIN
  EXECUTE IMMEDIATE 'CREATE TABLE tababc (col1 VARCHAR2(10), col2 VARCHAR2(10))';
END;
/

