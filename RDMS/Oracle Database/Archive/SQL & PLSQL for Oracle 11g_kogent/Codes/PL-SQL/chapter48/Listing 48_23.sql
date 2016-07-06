grant select, delete on user49.emp to emprole;  
   select table_name, privilege from role_tab_privs  
   where role = 'emprole';  
