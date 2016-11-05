--**determine herns and protosis
--AND operator
select patientName,age,contactno from patientsA
where contains(History,'herns AND proptosis') >0;
/*
A Boolean logical operator AND is used to search for words "herns"
and "proptosis"in the history column.
this means only those patients wil be displayed, which have a history of both herns and protosis
Alternatively & can be used instead of AND
*/
--& Operator 
Set DEFINE OFF --turn off the prompt
select patientName,age,contactno from patientsA
where contains(History,'herns & proptosis') >0;

/*
& Can only be used after setting define off using SET DEFINE OFF command in SQL Plus
this is coz in SQL*PLUS & indicates prompts for memory variable value.
similary OR operator can also be used, where in patients will be retrieved, if either of the search keywords are 
avaiable
*/
--OR Operator
select patientName,age,contactno from patientsA
where contains(History,'herns OR proptosis') >0;

--| operator
Set DEFINE OFF
select patientName,age,contactno from patientsA
where contains(History,'herns | proptosis') >0;

--*****patients having depressed or Hand proptosis and undergone a biopsy
select patientName,age,contactno from patientsA
where contains(History,'depressed OR (Proptosis AND biopsy)') >0;

--using reverse
select patientName,age,contactno from patientsA
where contains(History,'depressed |(Proptosis & biopsy)') >0;


--*** for venous blockage in the retinal veins
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'venous blockage in the retinal veins') >0;

/*
the phrase 'venous blockage in the retinal veins'to be search.
if a reserved keyword of Oracle text such as "and", "or", "minus" and so on appear
in the search phrase, then use escape character i,e a set of curly braces to enclose the reserved word
*/

--*for oedema and a mid-line shift
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'oedema {and} a mid-line shift') >0;

/*
if there are many reserved keywords in the search phrase , the entire search
phrase can be enclosed within a set of curly braces
*/
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'{oedema and a mid-line shift}') >0;

--*for disturbance of vision
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'disturbance NEAR vision') >0;

/*
Oracle text provides proimity search capability to perform search based on how close the search terms
are each other will the text begin searched for.
Proximity search returns a high score for words that are next to each other and low score for words that are far apart.
Alternatively ,instead of using NEAR, use semi-colon[;]
*/
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'disturbance ; vision') >0;

/*
since proximity search deals with score it cannot be used with CATSEARCH
*/

----**that are in depress state
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'depress%') >0;

/*
Oracle text allows using wildcards such as %[Percentage-matches multiple characters] and
_[Underscore-matches single character]].
in this case, the words such as depress,depression,depressed will be considered
*/

--***that are undergoing treatment or are being treated
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'$treat') >0;

/*
Oracle also allows using stem-expanision capabilities to expand the list of text string to convert several possible words.
to use stem expansion on the search keyword precede the with a dollar sign [$].
for example
the word have can be expanded to had,has,haven't ,hasn't.
in this case, the words such as treatement,treated,treating will be considered.
*/

---***suffering from headache. the word headache is sometime misspelled as headake.
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'?headache') >0;

/*
oracle text allows fuzzy match using the symbol ?. A fuzzy match is very useful to search for 
misspelled words.it expands the search term to include words that are spelled similarly but do not necessarily have the same stem.
the misspelled words can be either in the search keyword or in the searched text.
**00the words headache as well as headake are considered.
*/

---****treated by Dr.Amol or Dr. Amul
select patientName,age,contactno,history from patientsa
where CONTAINS(History,'!Amul') >0;

/*
Oracle text allows searching based on how the word sounds using the exalmations symbol[!]
the search logic used by ! is same as the one that is used by SOUNDEX Function
-in this case, the words amol as wel as amul are considered
*/


