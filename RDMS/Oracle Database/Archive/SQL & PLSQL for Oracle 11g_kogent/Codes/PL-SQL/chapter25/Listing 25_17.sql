update tab_student
set courses = tab_courselist(tab_course (10, 'oracle'),
tab_course (25,'c')) where sname = 'Anil'
/
