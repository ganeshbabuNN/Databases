create or replace procedure <procedureName>(
Argument1 IN OUT <DataType> ,Argument1 IN OUT <DataType>)
AS(variable)
<variableName> <DataType>;
<variableName> <DataType>;
IS(Cursor)
/* Defining a cursor to hold salary of all employees in a particular department */
  cursor <CursorName>(Argument1 <DataType>) IS
  select <ColumnName> from <TableName> where <ColumnName>=<Argument1>
  for update of ColumnName;
begin
   /* Assiging the value into the variable. */
  select <ColumnName/VariableName>  INTO <variableName> from <TableName>
    where <ColumnName>=<Argument/VariableName>;
    
    /* Normal update */
      update <TableName>
      set <ColumnName>=<variableName>
      where  <ColumnName>=<Argument/VariableName>;
    /* Cursor update */
 /* Defining a For loop */
  for <TypeName> IN <CursorName>(Argument1)
  /* Traversing through the loop */
  LOOP
    /* Updating salary of the current employee in the loop */
    update <TableName>
    set <ColumnName> = <TypeName> .<ColumnName>)
    where current of <CursorName> --if this is not there, it update all the rows of that department
  END LOOP;
end;
/