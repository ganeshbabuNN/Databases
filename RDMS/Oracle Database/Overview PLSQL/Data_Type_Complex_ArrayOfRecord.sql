declare
  type r_person is record(
   fname varchar2(30),
   lname varchar2(30),
   age number
  );
  
  --creating a array of record of v_person
  --r_person have the variable where T_person is array of record
  type t_person is table of r_person
  index by binary_integer;
  
  v_person t_person;
begin
  v_person(1).fname :='ganesh';
  v_person(1).lname :='babu';
  v_person(1).age :=22;
  
  v_person(1).fname :='baba';
  v_person(1).lname :='ss';
  v_person(1).age :=21;
end;
/