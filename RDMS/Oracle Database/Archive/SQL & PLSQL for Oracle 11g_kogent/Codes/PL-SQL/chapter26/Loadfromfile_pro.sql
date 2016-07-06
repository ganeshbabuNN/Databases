declare
x clob;
b bfile;
v varchar2(30);
amt number:=20;
begin
b:=bfilename('scotttmp','sample.txt');
x:='                                            ';
if (dbms_lob.fileexists(b)=1) then
dbms_output.put_line('file in existance');
dbms_lob.fileopen(b);
dbms_lob.loadfromfile(x,b,amt);  --a
dbms_lob.fileclose(b);
dbms_lob.read(x,amt,1,v);
dbms_output.put_line(v);
end if;
end;
