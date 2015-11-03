SELECT *
    FROM (SELECT times_purchased, state_code
            FROM customers t) 
    PIVOT (
            COUNT (state_code)
          FOR state_code
          IN ('NY', 'CT', 'NJ', 'FL', 'MO')
         )
ORDER BY times_purchased;