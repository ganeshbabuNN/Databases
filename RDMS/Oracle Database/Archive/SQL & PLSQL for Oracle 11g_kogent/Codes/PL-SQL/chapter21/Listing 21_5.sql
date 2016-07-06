create Procedure open_cursor
(generic_cursor in OUT
generic_cursor_type, status number) is

begin
    if status = 1 then
         open generic_cursor
         for select total
         from month_collection;
     end if;
    if status =2 then
         open generic_cursor 
         for select total
         from year_collection;
     end if;
end open_cursor;
/
