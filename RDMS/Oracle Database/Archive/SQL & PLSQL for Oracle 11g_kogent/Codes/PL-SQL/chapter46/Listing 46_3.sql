begin
	dbms_expfil.assign_attribute_set (
     		attr_set => 'property4sale',
             expr_tab => 'consumer',
             expr_col => 'interest',
		force=>’true’);
end;
/
