
--************************************************************************************************************************************************
--创建存储过程
CREATE PROC sp_test2
@input_val1 INT,	--输入参数
@input_val2 INT=0,	--输入参数
@input_val3 INT=0,	--输入参数
@output_val1 INT OUTPUT,	--输出参数
@output_val2 INT OUTPUT,	--输出参数
@output_val3 INT OUTPUT		--输出参数
AS
BEGIN
	SET @output_val1=1
	SET @output_val2=2
	SET @output_val3=3

	RETURN 100;	--返回值，默认返回值为0，返回值类型必须为整数（类似状态码）
END
GO

--************************************************************************************************************************************************
--修改存储过程
ALTER PROC sp_test2
@input_val1 INT,	--输入参数
@input_val2 INT=0,	--输入参数
@input_val3 INT=0,	--输入参数
@output_val1 INT OUTPUT,	--输出参数
@output_val2 INT OUTPUT,	--输出参数
@output_val3 INT OUTPUT		--输出参数
AS
BEGIN
	SET @output_val1=1
	SET @output_val2=2
	SET @output_val3=3

	RETURN 100;	--返回值
END
GO

--************************************************************************************************************************************************
--删除存储过程
DROP PROC sp_test2



--************************************************************************************************************************************************
--执行存储过程
DECLARE @return_val INT	--返回值，用于捕获存储过程返回值
DECLARE @input_val1 INT=0	--输入参数
DECLARE @input_val2 INT=0	--输入参数
DECLARE @input_val3 INT=0	--输入参数
DECLARE @output_val1 INT	--输出参数
DECLARE @output_val2 INT	--输出参数
DECLARE @output_val3 INT	--输出参数

EXEC @return_val=sp_test2 
@input_val1,
@input_val2,
@input_val3,
@output_val1 out,
@output_val2 out,
@output_val3 out

SELECT @return_val,@output_val1,@output_val2,@output_val3
