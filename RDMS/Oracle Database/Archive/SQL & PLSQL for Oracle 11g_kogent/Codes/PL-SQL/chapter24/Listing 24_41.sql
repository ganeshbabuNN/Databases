declare
	bcode batch.batchcode%type;
	netincome batch.netincome%type;
	code batch.coursecode%type;
	X gen_batch_data.generic_cur;
	ch number;
begin
	ch := 2;
	open_batch_cur( X, ch);
					--fetch X into bcode, ccode;	Error
        loop
        fetch x into bcode,netincome;
        exit when x%notfound;
        dbms_output.put_line('batch is '||bcode);
        end loop;
        close x;
end;
/
