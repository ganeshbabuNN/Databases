--determine herns and protosis
select patientName,age,contactno from patientsB
where CATSEARCH(History,'herns AND proptosis',NULL) >0;
/*
Only those patients will be displayed which have a history of both herns and proptosis.
For CTXCAT indexes,the AND operator can be avoaided and still achieve the same results
*/
-- blank instead of AND
select patientName,age,contactno from patientsB
where CATSEARCH(History,'herns proptosis',NULL) >0;
