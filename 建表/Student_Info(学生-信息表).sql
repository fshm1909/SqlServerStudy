--������ѧ��-��Ϣ��--���ڲ���1��1���ϵ
--����������ɾ��
if OBJECT_ID(N'Student_Info',N'U') is not null DROP TABLE Student_Info
--������
CREATE TABLE Student_Info
(
	ID int IDENTITY(1,1) NOT NULL,
	StudentID INT NULL,
	FatherName NVARCHAR(100) NULL,
	MontherName NVARCHAR(100) NULL,
	CONSTRAINT [PK_Student_Info] PRIMARY KEY CLUSTERED ([ID] ASC)
)


--��������
INSERT INTO Student_Info(StudentID,FatherName,MontherName) VALUES
(1,'����','����'),
(2,'����','����'),
(3,'���','����'),
(1000,'*��','*��'),
(1001,'*��2','*��2'),
(1002,'*��3','*��3')