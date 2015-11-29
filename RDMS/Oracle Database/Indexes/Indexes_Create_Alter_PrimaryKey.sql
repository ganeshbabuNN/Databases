select * from bestbooks;

--create the index
create index idx_bookname on bestbooks(bookname,isbn);

--alter the table structure to add primary key constraint on the customer no column with explicit instruction to use already index
alter table bestbooks
add constraint pk_bookname PRIMARY KEY (bookname)
 using index idx_bookname;