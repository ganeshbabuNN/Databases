declare
x clob;
b bfile;
v varchar2(30);
amt number:=20;
flag integer;
csize number;
begin
b:=bfilename('scotttmp','sample.txt');
dbms_lob.createtemporary(x,true);
if (dbms_lob.fileexists(b)=1) then
dbms_output.put_line('file in existance');
dbms_lob.fileopen(b);
dbms_lob.loadfromfile(x,b,amt);
dbms_lob.fileclose(b);
dbms_lob.read(x,amt,1,v);
dbms_output.put_line(v);
end if;
flag:=dbms_lob.istemporary(x);
dbms_output.put_line(flag);
csize := dbms_lob.getchunksize(x);
dbms_output.put_line('chunk size '||csize);
dbms_lob.freetemporary(x);
end;
