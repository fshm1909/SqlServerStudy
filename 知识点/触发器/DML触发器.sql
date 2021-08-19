
--************************************************************************************************************************************************
--【创建触发器】
CREATE TRIGGER tri_class_INSERT
ON Class--触发器针对的对象（表或者视图）
--WITH ENCRYPTION --加密，其他人不能查看该触发器（alter触发器时必须再次加上该选项，否则失效）
FOR INSERT --FOR/AFTER表示之后触发；INSERT：添加时触发,DELETE：删除时触发,UPDATE：修改时触发
--INSTEAD OF INSERT--INSTEAD OF表示之前触发
--NOT FOR REPLICATION --该选项表示该触发器不应用于复制
AS 
BEGIN
	PRINT 'INSERT触发器触发！' 
	--INSERT INTO Class(ClassName) VALUES('触发器添加的班级')--添加一条数据
	--SELECT * FROM Inserted;--inserted表 表示触发时要插入的数据。该表只存在在该触发器内部的作用域。
	--SELECT * FROM Deleted;--Deleted表 表示触发时要删除的数据。该表只存在在该触发器内部的作用域。

	--ROLLBACK TRANSACTION; --触发器回滚事务（即禁止接下来的操作）
	--PRINT '触发器回滚！' 
END
GO


--UPDATE触发器
CREATE TRIGGER tri_class_UPDATE
ON Class
FOR UPDATE
AS 
BEGIN
   --PRINT 'UPDATE触发器触发！' 
	SELECT * FROM Inserted;--inserted表 表示触发时要插入的数据。该表只存在在该触发器内部的作用域。
	SELECT * FROM Deleted;--Deleted表 表示触发时要删除的数据。该表只存在在该触发器内部的作用域。
END
GO

--UPDATE触发器
CREATE TRIGGER tri_class_DELETE
ON Class
FOR DELETE
AS 
BEGIN
   --PRINT 'DELETE触发器触发！'  
	SELECT * FROM Inserted;--inserted表 表示触发时要插入的数据。该表只存在在该触发器内部的作用域。  
	SELECT * FROM Deleted;--Deleted表 表示触发时要删除的数据。该表只存在在该触发器内部的作用域。
END
GO

--之前触发的触发器
CREATE TRIGGER tri_in_class_INSERT
ON Class
INSTEAD OF INSERT
AS 
BEGIN
   --PRINT 'DELETE触发器触发！'  
	SELECT * FROM Inserted;--inserted表 表示触发时要插入的数据。该表只存在在该触发器内部的作用域。  
	SELECT * FROM Deleted;--Deleted表 表示触发时要删除的数据。该表只存在在该触发器内部的作用域。
END
GO


--************************************************************************************************************************************************
--【修改触发器】
ALTER TRIGGER tri_class_INSERT
ON Class
FOR INSERT
AS 
BEGIN
   PRINT 'ALTER+INSERT触发器触发！' 
END
GO


--************************************************************************************************************************************************
--【删除触发器】
DROP TRIGGER tri_class_INSERT
DROP TRIGGER tri_class_UPDATE
DROP TRIGGER tri_class_DELETE


--************************************************************************************************************************************************
--【关闭触发器】
ALTER TABLE Class DISABLE TRIGGER tri_class_INSERT --关闭tri_class_INSERT触发器
ALTER TABLE Class DISABLE TRIGGER ALL --关闭class下所有触发器

--另一种写法
DISABLE TRIGGER tri_class_INSERT ON Class 
DISABLE TRIGGER ALL ON Class 


--************************************************************************************************************************************************
--【启用触发器】
ALTER TABLE Class ENABLE TRIGGER tri_class_INSERT --启用tri_class_INSERT触发器
ALTER TABLE Class ENABLE TRIGGER ALL --启用class下所有触发器

--另一种写法
ENABLE TRIGGER tri_class_INSERT ON Class 
ENABLE TRIGGER ALL ON Class 


--************************************************************************************************************************************************
--【使用触发器】
--触发器只能在触发某些行为时被动触发，不能主动触发

--添加数据时触发
INSERT INTO Class(ClassName) VALUES('***班')

--修改数据时触发
UPDATE Class SET ClassName='***班2' WHERE ClassName='***班'

--删除数据时触发
DELETE FROM Class WHERE ClassName='***班2'



SELECT * FROM Class
