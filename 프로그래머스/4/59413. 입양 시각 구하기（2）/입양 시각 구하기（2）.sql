-- 코드를 입력하세요
set @HOUR := -1; 

SELECT (@HOUR := @HOUR + 1) as HOUR,
(select count(*) from animal_outs where HOUR(DATETIME) = @HOUR) as COUNT
from ANIMAL_OUTS
where @HOUR < 23