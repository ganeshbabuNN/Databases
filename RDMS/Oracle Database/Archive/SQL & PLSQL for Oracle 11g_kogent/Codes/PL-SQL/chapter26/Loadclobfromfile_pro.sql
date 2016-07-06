declare
x clob;
b bfile;
v varchar2(30);
amt number:=20;
dest_offset number:=1;
src_offset number:=1;
warning number;
src_csid number:=dbms_lob.default_csid;
lang_context number:=dbms_lob.default_lang_ctx;
begin
b:=bfilename('scotttmp','sample.txt');
x:='                                            ';
if (dbms_lob.fileexists(b)=1) then
dbms_output.put_line('file in existance');
dbms_lob.fileopen(b);
dbms_lob.loadclobfromfile(x,b,amt,dest_offset,src_offset,src_csid,lang_context,warning);
dbms_lob.fileclose(b);
dbms_lob.read(x,amt,1,v);
dbms_output.put_line(v);
end if;
end;
