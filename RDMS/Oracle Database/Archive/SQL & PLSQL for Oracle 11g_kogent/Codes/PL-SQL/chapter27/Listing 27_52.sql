update empobjtab p
set p = deref (ref(p))
where p.empid = 1;
