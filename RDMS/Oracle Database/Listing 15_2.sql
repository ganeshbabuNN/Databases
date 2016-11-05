select ename,(case s
when ‘a’ then ‘a_shift’ when ‘b’ then ‘b_shift’
when ‘c’ then ‘c_shift’
else ‘any_shift’
end) as shift_name from emp_shift;
