create or replace view vw_adv as
 select to_char(advdate,'dy') day,to_char(advdate,'monyy') mnt,
 count(*) cnt
 from advertisement
 group by to_char(advdate,'dy'),to_char(advdate,'monyy');
/
