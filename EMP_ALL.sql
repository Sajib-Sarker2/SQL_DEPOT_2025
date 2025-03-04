
SET LINES 150
SET PAGES 12000


SPOOL ON


select a.emp_id ID, INITCAP(a.emp_nm) EMPLOYEE, INITCAP(b.desg_nm) DESIGNATION, A.WK_DT , A.GRD_CD
from pims.emp_mast a,pims.emp_desg b
where a.grd_cd=b.grd_cd and
a.desg_cd=b.desg_cd 
and FLAG ='A' 
order by A.GRD_CD, a.emp_id

/


SPOOL OFF

ED ON.LST

