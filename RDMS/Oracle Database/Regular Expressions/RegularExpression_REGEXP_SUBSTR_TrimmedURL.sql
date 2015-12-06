---to get the trimmed URL
with
   URL1 as (select 'http://www.ganeshbabu.com/articales' l1 from dual
            union all
            select 'http://www.ganeshbabu.com/articles/java' l1 from dual
            union all
            select 'http://www.ganeshbabu.com/articles/java/sss' l1 from dual
            union all
            select 'http://www.ganeshbabu.com/articles/java/sss/23423' l1 from dual)
select regexp_substr(url1.l1,'http://([[:alnum:]]+\.?){3,4}/?') trimmedURL from url1;


/*
http:// - indicates a string that begins with http://.
http://([[:alnum:]]+\.? - indicates a string that beings with http://,followed by substring that is made of one ore more alphanumeric characters with a period(.)[if exisits]
http://([[:alnum:]]+\.?){3,4}- indicates a string that beings with http://,followed by substring that is made of one ore more alphanumeric characters with a period(.)[if exisits]. this substring may repeat at least three times with a maximum to four times.
-This string may or may not end with a/.
*/