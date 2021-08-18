--表值函数分为【内联表值函数】和【多语句表值函数】


--************************************************************************************************************************************************
--【创建表值函数（内联表值函数）】
--内联表值用户定义函数没有BEGIN / END主体。SELECT语句是作为一个虚拟数据表返回的
--与视图相比，内联表值函数的优势在于其可以使用参数。
CREATE FUNCTION fun_tab1()--函数名称
RETURNS TABLE--返回值类型
AS
--BEGIN --不能有BEGIN END
	RETURN (SELECT * FROM Class)
--END

CREATE FUNCTION fun_tab11(@ID INT)--函数名称
RETURNS TABLE--返回值类型
AS
RETURN (SELECT * FROM Class WHERE ID=@ID)

--************************************************************************************************************************************************
--【创建表值函数（多语句表值函数）】
--将标量函数与内联表值函数的功能结合起来就构成了复杂的多语句表值函数。
--特征：这种类型的函数创建了一个表变量，将它置于代码中，然后从函数返回，以便能在SELECT语句中使用。
--优点：可以代码内生成复杂结果集，以便在SELECT语句中使用，在查询中构建复杂逻辑，并解决那些没有游标就很难解决的问题。
CREATE FUNCTION fun_tab2()--函数名称
RETURNS @RETURN_TAB TABLE(ID INT,ClassName nvarchar(100))--创建一个表变量作为返回值
AS
BEGIN
	INSERT @RETURN_TAB(ID,ClassName) SELECT ID,ClassName FROM Class WHERE ID <10;--将查询到的表数据插入到表变量中
	RETURN;--自动返回表变量
END


--************************************************************************************************************************************************
--【修改函数】
ALTER FUNCTION fun_tab1()--函数名称
RETURNS TABLE--返回值类型
AS
--BEGIN --不能有BEGIN END
	RETURN (SELECT * FROM Class WHERE ID>10)
--END


--************************************************************************************************************************************************
--【删除函数】
DROP FUNCTION fun_tab1
DROP FUNCTION fun_tab2


--************************************************************************************************************************************************
--【函数使用】
--例1
SELECT * FROM dbo.fun_tab1() --使用表一样使用表值函数
SELECT * FROM dbo.fun_tab2() --使用表一样使用表值函数

--使用APPLY表运算符
SELECT * FROM Student CROSS APPLY dbo.fun_tab11(Student.ClassID) 
SELECT * FROM Student OUTER APPLY dbo.fun_tab11(Student.ClassID) 




