create table employee
 (empname char (30),
  empid number (6),
  empinfo clob,
  emppicture bfile)
  lob(empinfo) store as
  (tablespace users storage (initial 10k next 10k))
/
