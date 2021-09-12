--如果表存在则删除
if OBJECT_ID(N'tb_a',N'U') is not null DROP TABLE tb_a

--创建表
create table tb_a
(
	--ID int NOT NULL PRIMARY KEY	--PRIMARY KEY：主键约束
	Field1 NVARCHAR(50)		--【字段标准】：字段名称 数据类型 （必填）
	,Field2 NVARCHAR(50) NULL	--NULL：是否允许null值（默认NOT NULL，一般显示声明，因为会有很多设置会改变这个默认值）；
	,Field3 int identity(0,1) NOT NULL		--IDENTITY(0,1)表示标识规范，标识种子为0（初始值），标识增量为1;可以写IDENTITY，没有括号，默认为(1,1)；标识列必须为数值类型；不能和默认值一起使用；【只允许为每个表指定一个标识列】。

	--【键约束】（在表创建时的约束名称都是系统自动生成的）
	--【主键设置】
	,Field5 int NOT NULL PRIMARY KEY	--PRIMARY KEY：主键约束（主键不能重复（唯一性），不能为空（必须设置NOT NULL））	
	--,CONSTRAINT [PK_tb_a] PRIMARY KEY CLUSTERED ([Field5] ASC) --主键约束另一种写法

	--【外键设置】
	,Field6 int NOT NULL FOREIGN KEY references tb_b(ID)	--FOREIGN KEY：外键约束（被引用的列必须有主键约束或唯一约束）
	--,Field7 int NOT NULL FOREIGN KEY references tb_a(Field5)	--外键约束可以引用自身表
	,Field8 int NOT NULL FOREIGN KEY references tb_b(ID) NOT FOR REPLICATION 	--NOT FOR REPLICATION :强制用于复制
	,Field9 int NOT NULL references tb_b(ID)	--外键约束 简写	
	
	--外键级联操作设置
	,Field10 int NULL FOREIGN KEY REFERENCES tb_b(Field1)	
	ON UPDATE NO ACTION	--默认值：不执行任何操作
	ON DELETE NO ACTION	--默认值：不执行任何操作	

	,Field11 int NULL FOREIGN KEY REFERENCES tb_b(Field2)	
	ON UPDATE CASCADE	--级联：指定如果试图更新某一行中的键值 ，而该行的键值被其他表的现有行中的外键所引用，则组成外键的所有值也将更新到为该键指定的新值。 (如果 timestamp 列是外键或被引用键的一部分，则不能指定 CASCADE。 )
	ON DELETE CASCADE	--级联：指定如果试图删除某一行，而该行的键被其他表的现有行中的外键所引用，则也将删除所有包含那些外键的行。

	,Field12 int NULL FOREIGN KEY REFERENCES tb_c(Field1)	
	ON UPDATE SET NULL	--设置NULL：指定如果试图更新某一行 ，而该行的键被其他表的现有行中的外键所引用，则组成被引用行中的外键的所有值将被设置为 NULL。目标表的所有外键列必须可为空值，此约束才可执行。
	ON DELETE SET NULL	--设置NULL：指定如果试图删除某一行，而该行的键被其他表的现有行中的外键所引用，则组成被引用行中的外键的所有值将被设置为 NULL。目标表的所有外键列必须可为空值，此约束才可执行。
	
	,Field13 int NULL FOREIGN KEY REFERENCES tb_d(Field1)	
	ON UPDATE SET DEFAULT	--设置默认值：指定如果试图删除某一行 ，而该行的键被其他表的现有行中的外键所引用，则组成被引用行中的外键的所有值将被设置为它们的默认值。目标表的所有外键列必须具 有默认值定义，此约束才可执行。如果某个列可为空值，并且未设置显式的默认值，则会使用 NULL 作为该列的隐式默认值。因 ON DELETE SET DEFAULT 而设置的任何非空值在主表中必须有对应的值，才能维护外键约束的有效性。
	ON DELETE SET DEFAULT	--设置默认值：指定如果试图更新某一行 ，而该行的键被其他表的现有行中的外键所引用，则组成被引用行中的外键的所有值将被设置为它们的默认值。目标表的所有外键列必须具 有默认值定义，此约束才可执行。如果某个列可为空值，并且未设置显式的默认值，则会使用 NULL 作为该列的隐式默认值。因 ON UPDATE SET DEFAULT 而设置的任何非空值在主表中必须有对应的值，才能维护外键约束的有效性。
	--Field12和Field13的外键采用了不同的表，因为在一个表里面的可能会导致循环或多重级联路径（报错了）
	
	--【唯一约束】
	,Field14 int NOT NUll unique



	--【默认值约束】
	,Field15 VARCHAR(100) default('默认值') NULL		--default:默认值

	--【check约束】
	,Field16 int NUll check(Field16<1000) --check()中添加和where子句后面一样的条件

)
ON [PRIMARY]--指定文件组（默认在PRIMARY（主文件组）），PRIMARY加[],不然报错



--if OBJECT_ID(N'tb_b',N'U') is not null DROP TABLE tb_b
--create table tb_b
--(
--	ID int NOT NULL PRIMARY KEY 
--	,Field1 int NULL unique 
--	,Field2 int NULL unique 
--)

--if OBJECT_ID(N'tb_c',N'U') is not null DROP TABLE tb_c
--create table tb_c
--(
--	Field1 int NULL unique 
--	,Field2 int NULL unique default(1) 
--)

--if OBJECT_ID(N'tb_d',N'U') is not null DROP TABLE tb_d
--create table tb_d
--(
--	Field1 int NULL unique default(1) 
--)