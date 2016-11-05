--diff way 2
BEGIN
    CASE
	WHEN 'D'= 'A'
	THEN
	  LOGIT('this is ganesh','D');
	ELSE
	  null;
	END CASE;
END;
/