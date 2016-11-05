create or replace view vw_enqcrs_notenroll as
 select coursecode,count(*) notenroll
 from enquiry
 where en_st = 'n'
 group by coursecode
/
