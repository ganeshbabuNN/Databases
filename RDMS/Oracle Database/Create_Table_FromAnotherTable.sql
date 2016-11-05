CREATE TABLE USAbankMaster
  (
    accountno,
    firstname,
    lastname,
    buildingname,
    road,
    area,
    city,
    pincode,
    country,
    contactno,
    status
  ) AS
SELECT accountno,
  firstname,
  lastname,
  buildingname,
  road,
  area,
  city,
  pincode,
  country,
  contactno,
  status
FROM bankMaster
WHERE country='USA';