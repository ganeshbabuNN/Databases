SELECT text
FROM all_source
WHERE name = 'STANDARD'
  AND upper(text) like '%EXCEPTION%';