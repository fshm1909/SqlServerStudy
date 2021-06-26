
--IF...ELSE 语句 *****************************************************************************
IF EXISTS(SELECT * FROM Class WHERE ID=1)
	BEGIN
		SELECT * FROM Class WHERE ID=1
	END
ELSE
	BEGIN
		PRINT '查询无数据'
	END


--CASE 语句 *****************************************************************************

--用法1
DECLARE @v int=ROUND((3-0)*rand(),0)

SELECT 
CASE @v
WHEN 0 THEN  '零'
WHEN 1 THEN  '一'
WHEN 2 THEN  '二'
WHEN 3 THEN  '三'
--ELSE  ''
END

--用法2
DECLARE @v int=ROUND((3-0)*rand(),0)

SELECT 
CASE 
WHEN @v=0 THEN  '零'
WHEN @v=1 THEN  '一'
WHEN @v=2 THEN  '二'
WHEN @v=3 THEN  '三'
--ELSE  ''
END



--WHILE 语句 *****************************************************************************

DECLARE @i int=ROUND((10-0)*rand(),0)
WHILE @i<10
	BEGIN
		SET @i=@i+1;
		PRINT @i
		--CONTINUE; --进入下一循环
		--BREAK; --退出循环
		--RETURN; --退出循环
	END
	

--WAITFOR 语句 *****************************************************************************
--延迟5秒钟执行（最长24小时）
WAITFOR DELAY '0:0:05'
SELECT * FROM Class

--到几点执行（最长24小时）
WAITFOR TIME '15:19:00'
SELECT * FROM Class




--TRY/CATCH 语句 *****************************************************************************
BEGIN TRY
	INSERT INTO Class(ID,ClassName) VALUES(100,'十二年（1）班');
END TRY
BEGIN CATCH
	SELECT 
	ERROR_NUMBER()--实际错误号
	,ERROR_SEVERITY()--错误级别
	,ERROR_STATE()--
	,ERROR_PROCEDURE()--导致错误的存储过程的名称
	,ERROR_LINE()--错误所在行号
	,ERROR_MESSAGE()--消息文本
END CATCH

