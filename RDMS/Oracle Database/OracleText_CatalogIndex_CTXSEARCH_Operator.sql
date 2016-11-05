--**determine herns and protosis
/*
Simillary the | operator can also be used, wherein patients will be retrieved.
if either of the search keywords are available
*/
select patientName,age,contactno from patientsB
where CATSEARCH(History,'herns | proptosis',NULL) >0;

--*****patients having depressed or Hand proptosis and undergone a biopsy
select patientName,age,contactno from patientsB
where CATSEARCH(History,'depressed |(proptosis biopsy)',NULL) >0; 

--*****venous blockage in the retinal veins
select patientName,age,contactno from patientsB
where CATSEARCH(History,'venous blockage in the retinal veins',NULL) >0;

/*
for reserved keywords, to search for the phrase "oedema and a mid-line shift", 
which has reserved keyword "" and ".
*/

select patientName,age,contactno from patientsB
where CATSEARCH(History,'oedema {and} a mid-line shift',NULL) >0;