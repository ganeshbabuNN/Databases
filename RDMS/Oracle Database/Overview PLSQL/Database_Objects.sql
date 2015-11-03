CREATE OR REPLACE TYPE o_person AS OBJECT (
    fname VARCHAR2(30),
    lname VARCHAR2(30),
    age NUMBER );
/


--calling the object with the value insertions.
DECLARE
  v_person o_person;	
BEGIN

 v_person := o_person('gaesh', 'baba', 21);
 
END;
/

---collection of objects of the objects
CREATE OR REPLACE TYPE o_person_coll AS TABLE OF o_person;
/

--now calling those collection of objects

DECLARE
  v_person o_person_coll := o_person_coll();	
BEGIN

 v_person.extend; --extending the collection of an objects
 v_person(1) := o_person('ganesh', 'babu', 21);
 
END;
/

