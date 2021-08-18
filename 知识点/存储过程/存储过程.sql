--创建存储过程
CREATE PROC sp_test
--WITH RECOMPILE	--该选项辨识每次使用都会重新编译存储过程
AS
SELECT * FROM Class
GO

--修改存储过程
ALTER PROC sp_test
AS
SELECT * FROM Class
GO

--删除存储过程
DROP PROC sp_test

--执行存储过程
EXEC sp_test
WITH RECOMPILE	--该选项辨识每次使用都会重新编译存储过程
