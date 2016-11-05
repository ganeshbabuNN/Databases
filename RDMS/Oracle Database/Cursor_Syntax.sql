syntax
------

CURSOR <CursorName> IS <Select Query>

-Explicit cursors are used in queries for multiple the multiple rows.similarly like a files like opening the file,processing and later closing the file

-Similary in Cursors can be processed as:
a)declare a cursor mapped to an SQL SELECT query
b)open the cursor
c)Fetch records/rows from the cursor one row at a time into memeory variables
d)process the data held in the memory variable as required using a loop
d)Exit from the loop processing is complete
e)Close the cursor