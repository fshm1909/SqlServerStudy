USE master
GO

IF EXISTS(SELECT * FROM sysdatabases where name='Test')
BEGIN
    SELECT '该数据库已存在'
    --DROP DATABASE Test        --如果该数据库已经存在，那么就删除它
END
ELSE
BEGIN
    CREATE DATABASE Test
    ON PRIMARY        --主文件组
    (
        NAME='Test',	--逻辑名称
        FILENAME='D:\DataBase\Test.mdf',	--路径+文件名
        SIZE=5MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
        FILEGROWTH=10%	--文件的增长率
    ),
	FILEGROUP group1  --创建了一个次文件组
	(
		NAME = 'Test_1',	--逻辑名称
		FILENAME='D:\DataBase\Test_1.ndf',	--路径+文件名
		SIZE=4MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
		FILEGROWTH=10%	--文件的增长率
	),
	(
		NAME = 'Test_2',	--逻辑名称
		FILENAME='D:\DataBase\Test_2.ndf',	--路径+文件名
		SIZE=4MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
		FILEGROWTH=10%	--文件的增长率
	),
	(
		NAME = 'Test_3',	--逻辑名称
		FILENAME='D:\DataBase\Test_3.ndf',	--路径+文件名
		SIZE=4MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
		FILEGROWTH=10%	--文件的增长率
	)

    LOG ON	-- 日志文件
    (
        NAME='Test_log',        -- 日志文件的逻辑名称
        FILENAME='D:\DataBase\Test_log.mdf',    -- 日志文件的物理名称
        SIZE=2mb,            --日志文件的初始大小
        MAXSIZE=UNLIMITED,        --日志文件增长的最大值
        FILEGROWTH=1mb        --日志文件的增长率
    )
END