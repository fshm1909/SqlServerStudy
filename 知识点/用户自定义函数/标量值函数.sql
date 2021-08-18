--标量值函数
--所谓标量函数简单点来讲就是返回的结果只是一个标量，返回的结果就是一种类型的一个值。

--************************************************************************************************************************************************
--【创建标量值函数（无参）】
CREATE FUNCTION fun1()--函数名称
RETURNS NVARCHAR(50)--返回值类型
--WITH SCHEMABINDING	--该选项使函数成为确定性函数
AS
BEGIN
	RETURN '返回值'
END

--【创建标量值函数（有参）】
CREATE FUNCTION fun2(@arg1 INT)--函数名称
RETURNS INT--返回值类型
AS
BEGIN
	RETURN @arg1+1
END

--【创建标量值函数（有参,嵌套）】
CREATE FUNCTION fun3(@arg1 INT)--函数名称
RETURNS INT--返回值类型
AS
BEGIN
	RETURN dbo.fun2(@arg1)*2
END


--************************************************************************************************************************************************
--【修改函数】
ALTER FUNCTION fun1()--函数名称
RETURNS NVARCHAR(50)--返回值类型
AS
BEGIN
	RETURN '修改返回值'
END


--************************************************************************************************************************************************
--【删除函数】
DROP FUNCTION fun1
DROP FUNCTION fun2
DROP FUNCTION fun3


--************************************************************************************************************************************************
--函数使用
--例1
SELECT dbo.fun1()
SELECT dbo.fun2(1)
SELECT dbo.fun3(1)

--例2
SELECT * FROM Class WHERE ClassName=dbo.fun1()
SELECT *,dbo.fun2(ID) FROM Class 

--例3
IF dbo.fun1()='返回值'
	BEGIN
		PRINT '查询有数据'
	END
ELSE
	BEGIN
		PRINT '查询无数据'
	END



