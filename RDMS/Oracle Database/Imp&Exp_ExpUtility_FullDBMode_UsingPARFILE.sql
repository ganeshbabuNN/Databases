--put all the DMP and Log file into a DAT file into Ganeshdata.dat PAR file

FILE=ganeshdata.dmp
GRANTS=y
FULL=y
ROWS=y
LOG=ganeshdata.log

--give to the privileges
grant exp_full_database to ganesh;

--now full DB backup using the PARTFILE
exp ganesh/<password> PARFILE=Ganeshdata.dat