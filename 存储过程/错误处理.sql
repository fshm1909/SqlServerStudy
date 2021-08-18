--创建存储过程
CREATE PROC sp_test3
@ERROR INT OUTPUT	--输出参数
AS
BEGIN
	--手动引发错误
	RAISERROR(
	'手动引发错误'
	,2
	,3
	)	

	SET @ERROR=@@ERROR
END
GO

--修改存储过程
ALTER PROC sp_test3
@ERROR INT OUTPUT	--输出参数
AS
BEGIN
	RAISERROR('手动引发错误',2,3)	--手动引发错误

	SET @ERROR=@@ERROR
END
GO

--执行存储过程
DECLARE @ERROR INT	--输出参数

EXEC sp_test3 @ERROR OUT

SELECT @ERROR
