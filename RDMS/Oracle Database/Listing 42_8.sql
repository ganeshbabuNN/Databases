alter procedure proc1 compile;

select object_name, status from user_objects where object_name in('pls_test','proc1');
