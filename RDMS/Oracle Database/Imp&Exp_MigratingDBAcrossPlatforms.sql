-The following steps present a general overview of how to move a DB between platforms
1)As a DBA users,issues the following SQL command to retrieve the names of all available Tablespaces.this informations will be required will be required later in this process
	SELECT Tablespace_Name from Dba_Tablespaces;
2)As a DBA user, perform a full export from the source DB as:
	EXP SYSTEM/<Password> FULL=y FILE=fullbackup.dump

3)Copy /move the dump to the target DB server. if FTP is used, ensure to copy it in binary format by entering binary at the FTP prompt to avoid file corruptions.
4)Create the DB on target server
5)Before importing the dump file, create the required Tablespaces, using the information obtained in step1
or else the import ultilies creates the corresponding data files in the same file structure as at the source database, which may not be compatible with the file strucutre on the target system
6)As a DBA user, perform a Full Import with the IGNORE parameter enabled as:
	IMP System<Password> FULL=y IGNORE=y FILE=Fullbackup.dmp
   IGNORE=y instructs oracle to ignore any creations errors during the import and permit the import to complete
7)Perform a full backup of the new DB as a backup for future.