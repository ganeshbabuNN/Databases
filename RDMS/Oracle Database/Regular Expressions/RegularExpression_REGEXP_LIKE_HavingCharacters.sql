select * from locations
where regexp_like (postal_code,'[^[:digit:]]');

-- indicates the string that holds a character that is not a digits. the negation is done using ^