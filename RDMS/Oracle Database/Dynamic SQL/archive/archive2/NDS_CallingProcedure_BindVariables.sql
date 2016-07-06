BEGIN
  EXECUTE IMMEDIATE '
    BEGIN
      logit(:mybindvar, :displaymode);
    END;'
  USING 'This is my dynamic message.', 'D'; ---invoking the binding variables of that procedures
END;
/