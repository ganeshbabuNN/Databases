select *
from pcm
unpivot
(
marks for subject in (physics,chemistry,maths)
);
