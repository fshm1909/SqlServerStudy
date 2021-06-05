--创建【学生-课程中间表】
--如果表存在则删除
if OBJECT_ID(N'Student_Subject',N'U') is not null DROP TABLE Student_Subject
--创建表
CREATE TABLE Student_Subject
(
	ID int IDENTITY(1,1) NOT NULL,
	StudentID INT NULL,
	SubjectID INT NULL,
)

--插入数据
DECLARE @index INT SET @index=0
WHILE @index<20
BEGIN    
	INSERT INTO Student_Subject(StudentID,SubjectID) VALUES(ROUND((10-1)*rand(),0),ROUND((10-1)*rand(),0))
    set @index=@index +1
END