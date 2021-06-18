use Test

--查看数据库文件的信息
SELECT * FROM sys.database_files

--查看数据库组的信息
SELECT * FROM sys.filegroups

--查看数据库文件的基本信息和状态
SELECT * FROM sys.master_files

--数据库和文件目录视图查看有关数据库的基本信息
SELECT * FROM sys.databases
WHERE name='Test'


sp_helpdb