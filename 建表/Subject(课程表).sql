--�������γ̱�
--����������ɾ��
if OBJECT_ID(N'Subject',N'U') is not null DROP TABLE Subject
--������
CREATE TABLE Subject
(
	ID int IDENTITY(1,1) NOT NULL,
	SubjectName NVARCHAR(100) NULL,
	CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED ([ID] ASC)
)

--��������
INSERT INTO Subject(SubjectName) VALUES
('����'),
('��ѧ'),
('Ӣ��'),
('����'),
('��ѧ'),
('��ʶ'),
('��ѧ'),
('����'),
('����'),
('����'),
('����'),
('����'),
('��ʷ'),
('����'),
('����'),
('�����')