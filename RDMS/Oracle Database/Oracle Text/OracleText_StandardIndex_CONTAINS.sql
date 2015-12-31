--determine herns and protosis
select patientName,age,contactno from patientsA
where contains(History,'depress') >0;
/*

-if the word "Xxx"is avaiable in that column , the contains functions return a score greater than 0,since value greater then 
0 is returned, the WHERE conditions evaluates to TRUE and the associated recofd is displayed.
*/

select patientName,age,contactno,score(1) from patientsA
where contains(History,'depressed',1) >0
order by score(1) DESC;

/*
-For Larger searched Text,SCORE() can be used an rank to result-set by degree of relevance to the text query.Relevance, for 
the context index, is defiend in terms frequency.the more times a terms occurs in a document , the higher is the relevance
-SCORE() is a pseudo-Column that carries the relvance informations ancillary to the CONTAINS functions
*/
