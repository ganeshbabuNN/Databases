BEGIN
  execute immediate 
      'insert into tababc (col1, col2) 
         values (:col1val, :col2val)'
    using 'A', 'B';
  
  logit('Insert Rows: ' || SQL%ROWCOUNT, 'D' );
  
  execute immediate 
      'update tababc 
         set col1 = :newcol1
         where col2 = :oldcol2'
    using 'C', 'B';
    
  logit('Update Rows: ' || SQL%ROWCOUNT, 'D' );
  
  execute immediate 
      'delete from  tababc 
         where col2 = :oldcol2'
    using 'B';
    
  logit('Delete Rows: ' || SQL%ROWCOUNT, 'D' );
  
END;

/

