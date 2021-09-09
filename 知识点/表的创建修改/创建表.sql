--如果表存在则删除
if OBJECT_ID(N'tb_a',N'U') is not null DROP TABLE tb_a

--创建表
create table tb_a
(
	ID int NOT NULL PRIMARY KEY --PRIMARY KEY：主键约束
	,Field1 NVARCHAR(50) --【字段标准】：字段名称 数据类型 （必填）
	,Field2 NVARCHAR(50) NULL--NULL：是否允许null值（默认NOT NULL，一般显示声明，因为会有很多设置会改变这个默认值）；
	,Field3 VARCHAR(100) default('默认值') NULL --default:默认值
	,Field4 int identity(0,1) NOT NULL --IDENTITY(0,1)表示标识规范，标识种子为0（初始值），标识增量为1;可以写IDENTITY，没有括号，默认为(1,1)；标识列必须为数值类型；不能和默认值一起使用；只允许为每个表指定一个标识列。

)
--ON filegroup--指定文件组（默认在PRIMARY（主文件组））




