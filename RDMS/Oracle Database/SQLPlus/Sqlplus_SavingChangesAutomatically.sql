-The autocommit features can be set using the SET commands AUTOCOMMIT variable
	SET AUTOCOMMIT ON
-Turns autocommit on
	SET AUTOCOMMIT OFF
-Truns autocommit off[the default]
	SET AUTOCOMMIT n
-commits changes after every n SQL commands or PL/SQL blocks
	SET AUTOCOMMIT IMMEDIATE
-Truns autocommit on.
-After each autocommit, SQL plus displays the following messages
-when the autocommit features in turned on, the changes made in DB cannot be rolled back.
-to commit changes to the DB, after a number of SQL DML commands or PL/SQL blocks, type following command
	SET AUTOCOMMIT 10
-SQL Plus counts SQL DML command and PL/SQL blocks as they are exeucted and commits the changes after the tenth SQL DML command or PL/SQL block
-PL/SQL block is regarded as one transaction ,regardless of the actual number of SQL commands contained within
-To determine what the AUTOCOMMIT is set to [OFF or ON] enter the following SHOW command
	SHOW AUTOCOMMIT