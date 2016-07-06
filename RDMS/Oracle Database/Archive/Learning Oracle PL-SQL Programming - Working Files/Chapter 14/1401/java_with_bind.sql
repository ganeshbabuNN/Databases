
 OraclePreparedStatement pstmt = conn.prepareStatement(
     "select last_name, first_name " +
	 "from employees " +
	 "where last_name = ?" );
	 
   pstmt.setString(1, "Cunningham")

   pstmt.execute();
   
    while (rset.next())
      System.out.println (rset.getString(1) + ", " + rset.getString(1) );

Equivalent PL/SQL Loop

FOR ci IN (
   	select last_name, first_name 
	  from employees 
	  where last_name = p_last_name)
LOOP
  DBMS_OUTPUT.PUT_LINE(c1.first_name || ', ' || c1.last_name);
END LOOP;
