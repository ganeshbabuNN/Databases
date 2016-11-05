--using ANY keyword will not work in Normal Pivot syntax. this is applicable for the XML structuring

SELECT *
    FROM (SELECT times_purchased, state_code
            FROM customers t) 
    PIVOT (
            COUNT (state_code)
          FOR state_code
          IN (ANY)
         )
ORDER BY times_purchased;