SELECT owner,
  constraint_name,
  table_name,
  constraint_type,
  search_condition,
  r_owner,
  r_constraint_name
FROM USER_CONSTRAINTS 
where table_name ='EMPLOYEE';