--having 2nd last and 4the last character of their names as vowels i,e A,E,I,O,U.
select * from employees
where regexp_like (first_name,'[AEIOU].[AEIOU].$','i');

/*
-indicates the the string ends with a character [.$], having the 2nd last character in the string as a vowel
[[AEIOU].$],3rd last character as any character [.[AEIOUS].$] and the 4th last
character in the string again as a vowel [[AEIOU].[AEIOU].$].
-this function is also passed a vlaue in the third parameter i,e i. this indicates the search should be case insensitive.
*/

