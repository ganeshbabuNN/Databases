update account
set amt = amt-100
where account_no=1000;
						--A
update account 
set amt = amt+100
where account_no=2000;
						--B 
commit;
						--C
