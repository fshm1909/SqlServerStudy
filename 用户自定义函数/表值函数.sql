--创建表值函数
CREATE FUNCTION fun_tab1()--函数名称
RETURNS TABLE--返回值类型
AS
--BEGIN --不能有BEGIN END
	RETURN (SELECT * FROM Class)
--END



--函数使用************************************
--例1
SELECT * FROM dbo.fun_tab1() --使用表一样使用表值函数





