  ResultSet rset = stmt.executeQuery("select last_name, first_name from employees");
  
  while (rset.next())
     System.out.println (rset.getString(1) + ", " + rset.getString(1) );