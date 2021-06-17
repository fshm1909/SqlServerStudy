USE master
GO

IF EXISTS(SELECT * FROM sysdatabases where name='Test2')
BEGIN
    SELECT '该数据库已存在'
    --DROP DATABASE Test2        --如果该数据库已经存在，那么就删除它
END
ELSE
BEGIN
    CREATE DATABASE Test2
    ON PRIMARY        --主文件组
    (
        NAME='Test2',	--逻辑名称
        FILENAME='E:\MyProject\DataBase\SqlServer\Test2.mdf',	--路径+文件名
        SIZE=5MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
        FILEGROWTH=10%	--文件的增长率
    ),
	FILEGROUP group1  --创建了一个次文件组
	(
		NAME = 'Test2_1',	--逻辑名称
		FILENAME='E:\MyProject\DataBase\SqlServer\Test2_1.ndf',	--路径+文件名
		SIZE=4MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
		FILEGROWTH=10%	--文件的增长率
	),
	(
		NAME = 'Test2_2',	--逻辑名称
		FILENAME='E:\MyProject\DataBase\SqlServer\Test2_2.ndf',	--路径+文件名
		SIZE=4MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
		FILEGROWTH=10%	--文件的增长率
	),
	(
		NAME = 'Test2_3',	--逻辑名称
		FILENAME='E:\MyProject\DataBase\SqlServer\Test2_3.ndf',	--路径+文件名
		SIZE=4MB,	--初始大小（MB）
        MAXSIZE=UNLIMITED,	--文件增长的最大值
		FILEGROWTH=10%	--文件的增长率
	)

    LOG ON	-- 日志文件
    (
        NAME='Test2_log',        -- 日志文件的逻辑名称
        FILENAME='E:\MyProject\DataBase\SqlServer\Test2_log.mdf',    -- 日志文件的物理名称
        SIZE=2mb,            --日志文件的初始大小
        MAXSIZE=UNLIMITED,        --日志文件增长的最大值
        FILEGROWTH=1mb        --日志文件的增长率
    )
END