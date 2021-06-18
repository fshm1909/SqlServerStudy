--删除数据库	****************************************************************************************

IF EXISTS (SELECT * FROM sysdatabases WHERE name ='Test')
DROP DATABASE Test

--修改数据库名称	****************************************************************************************
ALTER DATABASE Test
MODIFY NAME = Test2
GO

--向数据库添加文件	****************************************************************************************
ALTER DATABASE Test
ADD FILE 
(
	NAME = 'Test_4',	--逻辑名称
	FILENAME='D:\DataBase\Test_4.ndf',	--路径+文件名
	SIZE=4MB,	--初始大小（MB）
	MAXSIZE=UNLIMITED,	--文件增长的最大值
	FILEGROWTH=10%	--文件的增长率
),
(
	NAME = 'Test_5',	--逻辑名称
	FILENAME='D:\DataBase\Test_5.ndf',	--路径+文件名
	SIZE=4MB,	--初始大小（MB）
	MAXSIZE=UNLIMITED,	--文件增长的最大值
	FILEGROWTH=10%	--文件的增长率
) 
TO FILEGROUP group1	--添加到文件组
GO 

--向数据库添加日志文件	****************************************************************************************
ALTER DATABASE Test
ADD LOG FILE 
(
	NAME='Test_log2',        -- 日志文件的逻辑名称
	FILENAME='D:\DataBase\Test_log2.mdf',    -- 日志文件的物理名称
	SIZE=2mb,            --日志文件的初始大小
	MAXSIZE=UNLIMITED,        --日志文件增长的最大值
	FILEGROWTH=1mb        --日志文件的增长率
),
(
	NAME='Test_log3',        -- 日志文件的逻辑名称
	FILENAME='D:\DataBase\Test_log3.mdf',    -- 日志文件的物理名称
	SIZE=2mb,            --日志文件的初始大小
	MAXSIZE=UNLIMITED,        --日志文件增长的最大值
	FILEGROWTH=1mb        --日志文件的增长率
) 
GO 

--删除文件	****************************************************************************************
ALTER DATABASE Test
REMOVE FILE Test_4
ALTER DATABASE Test
REMOVE FILE Test_5

ALTER DATABASE Test
REMOVE FILE Test_log2
ALTER DATABASE Test
REMOVE FILE Test_log3

GO 


--修改文件	****************************************************************************************
ALTER DATABASE Test
MODIFY FILE
(
	NAME = 'Test_1'	--逻辑名称
	--,NEWNAME = 'Test_22'	--新名称
	--,FILENAME='D:\DataBase\Test_1.ndf'	--路径+文件名
	--,SIZE=10MB	--初始大小（MB）
	--,MAXSIZE=UNLIMITED	--文件增长的最大值
	--,FILEGROWTH=10%	--文件的增长率
	FILEGROUP=group1
)

GO











