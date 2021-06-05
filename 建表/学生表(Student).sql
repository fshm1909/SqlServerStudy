--创建【学生表】
--如果表存在则删除
if OBJECT_ID(N'Student',N'U') is not null DROP TABLE Student
--创建表
CREATE TABLE Student
(
	ID int IDENTITY(1,1) NOT NULL,
	Name NVARCHAR(100) NULL,
	Age SMALLINT NULL,
	ClassID INT NULL,
	Sex bit DEFAULT(0) NULL,
	CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([ID] ASC)
)

--插入数据
INSERT INTO Student(Name,Age,ClassID,Sex) VALUES
('小明',10,16+ROUND((20-16)*rand(),0),0),
('小王',11,16+ROUND((20-16)*rand(),0),0),
('小李',10,16+ROUND((20-16)*rand(),0),0),
('小赵',10,16+ROUND((20-16)*rand(),0),0),
('小钱',11,16+ROUND((20-16)*rand(),0),0),
('小孙',10,16+ROUND((20-16)*rand(),0),0),
('小周',11,16+ROUND((20-16)*rand(),0),0),
('小吴',11,16+ROUND((20-16)*rand(),0),0),
('小郑',10,16+ROUND((20-16)*rand(),0),0),
('小王',12,16+ROUND((20-16)*rand(),0),0),
('小冯',10,16+ROUND((20-16)*rand(),0),0),
('小陈',11,16+ROUND((20-16)*rand(),0),0),
('小褚',10,16+ROUND((20-16)*rand(),0),0),
('小卫',11,16+ROUND((20-16)*rand(),0),0)