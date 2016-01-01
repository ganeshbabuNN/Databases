Privileges
==========
-It allows safeguarding informations stored in the tables from unauthorized viewing.
-A DBA Depending on a user role and designation provides appropriate rights on resources such as tables, views and so on. SUch rights are called privileges
-A Privileges is a set of rights, to execute an SQL statements or to access another user's objects
-Objects that are created by a user are owned and controlled by that user. if a user desires to access any of the objects belonging to some user, the owner of the object gives appropriate permissions to allow this. This is called Granting of Privileges
-Privileges once given can be taken back by the owner of the objects. This is called Revoking of Privileges
-Oracle has two kinds of privileges
*System Privileges
*Object Privileges
-A Privileges can be assigned to a user or a role.

System Privileges
-----------------
-There are around 206 system privileges that oracle has. These can be displayed using the following SELECT query.
	SELECT NAME FROM SYSTEM_PRIVILEGE_MAP;
-This statements when exeucted will display all the available system privilegs such as CREATE, SESSION,DROP USER ,ALTER DB and so on.
-The most important and common system privileges are:
a)Create Session: A User cannot login without this privileges
b)Create Table
c)Create View
d)Create Procedure
e)Create Procedures
f)SYSDBA
g)SYSOPER

Object Privileges
-----------------
-Privileges that are assigned to the following types of DB Objects are called Object Privileges
1)Tables
SELECT
INSERT
UPDATE
DELETE
ALTER
DEBUG
FLASHBACK
ON COMMIT
REFRESH
QUERY REWRITE
REFERENCE ALL
2)Views
SELECT
INSERT
UPDATE
DELETE
UNDER 
REFERENCES
FLASHBACK
DEBUG
3)Sequence
ALTER
SELECT
4)Packages,Procedures,Functions[Java classes,sources...]
EXECUTE
DEBUG
5)Materialized Views
DELETE
FLASHBACK
INSERT
SELECT
UPDATE
6)Directories
READ
WRITE
7)Libraries
EXECUTE
8)User defined types
EXECUTE
DEBUG
UNDER
9)Opeartors
EXECUTE
10)IndexTypes
EXECUTE