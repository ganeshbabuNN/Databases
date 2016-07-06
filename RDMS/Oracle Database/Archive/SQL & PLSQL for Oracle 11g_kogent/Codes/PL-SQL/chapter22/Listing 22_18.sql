declare
    a enquiry%rowtype;
    b enquiry%rowtype;
    cursor c1 is
    select * from enquiry;
    c  c1%rowtype;
