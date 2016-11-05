---Select statements
SQL> select
  2  employee_id
  3  ,first_name
  4  from employees;

/*
A command file with a host operating system text editor can be created by entering EDIT command following by the name of the file as shown below
*/
SQL>edit ganesh.sql
/*
To Load the buffer contents into a text editor other then the default[EDITOR environment variable],use the SQL plus DEFINE command, to define a variable along with _EDITOR ,to hold name of the editor as shown below
*/
SQL> DEFINE _EDITOR="C:\Program Files (x86)\Total CMA Pack\Tools\EditPlus\editplus.exe";
/*
Once the contents are in the buffer, the command can be edited further and if the file does not contains SQL Plus commands,the execute it with the RUN Command
*/
SQL> GET gabesg

/*
-The START Command retrieves a command file and run the commands it contains.Use the START to run a command file containing SQL commands,PL/SQL blocks and SQL Plus commands
*/
SQL>START ganesh

/*
The at the rate sign[@] can be used to run a command file.The @Command list and runs the commands in the specified command file is the same manner as the START Command
*/
SQL>@ganesh

or

sqlplus hr/<password>@ganesh