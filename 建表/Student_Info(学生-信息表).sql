--创建【学生-信息表】--用于测试1对1表关系
--如果表存在则删除
if OBJECT_ID(N'Student_Info',N'U') is not null DROP TABLE Student_Info
--创建表
CREATE TABLE Student_Info
(
	ID int IDENTITY(1,1) NOT NULL,
	StudentID INT NULL,
	FatherName NVARCHAR(100) NULL,
	MontherName NVARCHAR(100) NULL,
	CONSTRAINT [PK_Student_Info] PRIMARY KEY CLUSTERED ([ID] ASC)
)


--插入数据
INSERT INTO Student_Info(StudentID,FatherName,MontherName) VALUES
(1,'明爸','明妈'),
(2,'王爸','王妈'),
(3,'李爸','李妈'),
(1000,'*爸','*妈'),
(1001,'*爸2','*妈2'),
(1002,'*爸3','*妈3')