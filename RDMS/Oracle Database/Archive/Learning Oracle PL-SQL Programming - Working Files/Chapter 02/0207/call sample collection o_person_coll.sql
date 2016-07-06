DECLARE
  v_person o_person_coll := o_person_coll();	
BEGIN

 v_person.extend;
 v_person(1) := o_person('Lewis', 'Cunningham', 21);
 
END;
/

