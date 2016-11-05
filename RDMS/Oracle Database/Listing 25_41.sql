x adr_rec;
select vendor.plotno,vendor.street,vendor.city
into x from vendor
where vendorcode = 10;
