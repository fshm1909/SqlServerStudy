--���������
DECLARE @NumBegin Int=16    --���������Сֵ 
DECLARE @NumEnd Int=20     --����������ֵ 
DECLARE @Decimal Int=0      --����С���㼸λ 
SELECT @NumBegin+round((@NumEnd-@NumBegin)*rand(),@Decimal)

SELECT 16+ROUND((20-16)*rand(),0)
SELECT (20-16)*rand()