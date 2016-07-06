BEGIN
  EXECUTE IMMEDIATE '
    BEGIN
      logit(:mybindvar, :displaymode);
    END;
  '
  USING 'This is my dynamic message.', 'D';
END;
/
