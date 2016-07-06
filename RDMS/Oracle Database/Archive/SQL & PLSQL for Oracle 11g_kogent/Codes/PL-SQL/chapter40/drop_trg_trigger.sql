create or replace trigger drop_trg
before drop on scott.schema
begin
   	dbms_output.put_line(ora_sysevent);
 	dbms_output.put_line(ora_login_user);
 	dbms_output.put_line(ora_instance_num);
 	dbms_output.put_line(ora_database_name);
 	dbms_output.put_line(ora_dict_obj_type);
 	dbms_output.put_line(ora_dict_obj_name);
 	dbms_output.put_line(ora_dict_obj_owner);
end;
