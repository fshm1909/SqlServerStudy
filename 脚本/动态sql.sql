
EXEC ('SELECT * FROM Class')

DECLARE @field NVARCHAR(100)='*'
EXEC ('SELECT '+@field+' FROM Class')

EXEC ('DECLARE @a NVARCHAR(100)=1 SELECT * FROM Class WHERE ID=@a')


--EXEC作用域	*****************************************************************
--EXEC不能调用外部变量
DECLARE @a NVARCHAR(100)=1
EXEC ('SELECT * FROM Class WHERE ID=@a')

--不能调用EXEC内部变量
EXEC ('DECLARE @a NVARCHAR(100)=1')
SELECT * FROM Class WHERE ID=@a
