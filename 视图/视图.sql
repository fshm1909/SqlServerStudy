
--������ͼ	****************************************************************************************
CREATE VIEW vm_Student
AS
SELECT ID,Name FROM Student
GO

CREATE VIEW vm_Student2
AS
SELECT ID,Name FROM Student
WHERE ID<10
GO

CREATE VIEW vm_Student3
AS
SELECT Student.*,Class.ClassName FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
GO

--�޸���ͼ	****************************************************************************************
--(����ԭ��ͼ���κ�Ȩ�ޣ��������κ�������Ϣ)

ALTER VIEW vm_Student
AS
SELECT ID,Name,Age FROM Student
GO

--ɾ����ͼ	****************************************************************************************
DROP VIEW vm_Student,vm_Student2,vm_Student3


--��ѯ	****************************************************************************************
SELECT * FROM vm_Student
SELECT * FROM vm_Student2
SELECT * FROM vm_Student3

