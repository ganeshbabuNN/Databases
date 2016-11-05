create or replace type complex1 as
object(rl number,
im number,
member procedure  print,
member function add1(x complex1) return complex1,
map member function val return number) not final 
/ 
