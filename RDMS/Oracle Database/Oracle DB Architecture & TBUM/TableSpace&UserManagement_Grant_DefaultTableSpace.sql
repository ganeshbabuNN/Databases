--create a new user with defaulting the tablespace ganeshpratice(earlier lessons)

CREATE USER ganesh2 IDENTIFIED BY abc123
DEFAULT TABLESPACE ganeshpratice;


---granting the privileges to this new user
GRANT CONNECT,RESOURCE TO ganesh2;