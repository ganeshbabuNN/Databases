create or replace trigger db_trg
after servererror on database
declare	
	l_sql_text ora_name_list_t;
	l_n number;
begin
	if (is_servererror(2345))
	then
	insert into t values ('ora_server_error = ' || ora_server_error(1));
           l_n := ora_sql_txt( l_sql_text );
           for i in 1 .. l_n
           loop
               	insert into t values ( 'l_sql_text(' || i || ') = ' ||
			l_sql_text(i) );
           end loop;
      end if;
   end;
/
