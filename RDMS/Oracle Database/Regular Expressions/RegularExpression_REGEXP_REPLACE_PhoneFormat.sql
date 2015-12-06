--replace the phone number as 91-022-2342332
WITH phonenumber AS
  (SELECT '9101122333292' l1 FROM dual
  UNION ALL
  SELECT '91011223433292' l1 FROM dual
  UNION ALL
  SELECT '91011223434292' l1 FROM dual)
SELECT regexp_replace(phonenumber.l1,'(.{2})(.{3})(.*)','\1-\2-\3') 
FROM phonenumber;


--you can use also via update

update phonenumber
set phonenumber = regexp_replace(phonenumber.l1,'(.{2})(.{3})(.*)','\1-\2-\3');

/*
(.{2})- indicates the first two character
(.{3})- indicates the next three characters
(.*)- indicate the remaining characters
-three sub-expression are created and hence each one can be referred using backreferences
\1-\2-\3
the first sub-expression is assigned \1 the second is assigned \2 and the third is assigned \3
Using back references the values are retrieved and placed in the desired format
*/