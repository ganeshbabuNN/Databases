drop tablespace Ganeshpratice;
create tablespace Ganeshpratice
datafile 'Mydata1-Ganeshpratice.dat'
SIZE 50M
AUTOEXTEND ON
NEXT 10m
MAXSIZE 100m
ONLINE;

/*
the tablespace auto extends in increments of 10 MB, until it reaches a maximum size of 100MB
-it it recommended to use AUTOEXTEND on all tablespace for production databases.
*/
