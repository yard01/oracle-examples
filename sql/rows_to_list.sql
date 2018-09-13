WITH INPUT_DATA AS (
SELECT 1 ID, 'Apple' NAME FROM DUAL
UNION ALL
SELECT 2 ID, 'Pear' NAME FROM DUAL
UNION ALL
SELECT 3 ID, 'Plum' NAME FROM DUAL
UNION ALL
SELECT 4 ID, 'Orange' NAME FROM DUAL
UNION ALL
SELECT 5 ID, 'Apricot' NAME FROM DUAL
)

select  
--Oracle 10------------------------------------------------------------------
--    dbms_lob.substr(WM_CONCAT(NAME),4000, 1) CD_LIST
-----------------------------------------------------------------------------

--Oracle 11, 12--------------------------------------------------------------
   dbms_lob.substr(LISTAGG(NAME, ',') WITHIN GROUP (order by ID),4000, 1) CD_LIST
-----------------------------------------------------------------------------    
from 
  INPUT_DATA 
;

select 1 from dual;