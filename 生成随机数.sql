--生成随机数
DECLARE @NumBegin Int=16    --随机数的最小值 
DECLARE @NumEnd Int=20     --随机数的最大值 
DECLARE @Decimal Int=0      --保留小数点几位 
SELECT @NumBegin+round((@NumEnd-@NumBegin)*rand(),@Decimal)

SELECT 16+ROUND((20-16)*rand(),0)
SELECT (20-16)*rand()