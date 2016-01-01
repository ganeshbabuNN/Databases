create tablespace Ganeshpratice
datafile 'Mydata-Ganeshpratice.dat'
SIZE 50M
ONLINE;

/*
by default an oracle Tablespace does not grow, if it runs out of space  till 50 MB
unless you use AUTOEXTEND keyword is used with the CREATE TABLESPACE command, to specify that the tablespace should grow, dynamically
*/
