--������ѧ����
--����������ɾ��
if OBJECT_ID(N'Student',N'U') is not null DROP TABLE Student
--������
CREATE TABLE Student
(
	ID int IDENTITY(1,1) NOT NULL,
	Name NVARCHAR(100) NULL,
	Age SMALLINT NULL,
	ClassID INT NULL,
	Sex bit DEFAULT(0) NULL,
	CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([ID] ASC)
)

--��������
INSERT INTO Student(Name,Age,ClassID,Sex) VALUES
('С��',10,16+ROUND((20-16)*rand(),0),0),
('С��',11,16+ROUND((20-16)*rand(),0),0),
('С��',10,16+ROUND((20-16)*rand(),0),0),
('С��',10,16+ROUND((20-16)*rand(),0),0),
('СǮ',11,16+ROUND((20-16)*rand(),0),0),
('С��',10,16+ROUND((20-16)*rand(),0),0),
('С��',11,16+ROUND((20-16)*rand(),0),0),
('С��',11,16+ROUND((20-16)*rand(),0),0),
('С֣',10,16+ROUND((20-16)*rand(),0),0),
('С��',12,16+ROUND((20-16)*rand(),0),0),
('С��',10,16+ROUND((20-16)*rand(),0),0),
('С��',11,16+ROUND((20-16)*rand(),0),0),
('С��',10,16+ROUND((20-16)*rand(),0),0),
('С��',11,16+ROUND((20-16)*rand(),0),0)