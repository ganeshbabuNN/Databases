create or replace type complex2 as
object(rl number, im number,
not final member procedure  print,
static function add1(x complex2, y complex2) return complex2,
order member function val(x complex2) return number) not final
/ 
