
SELECT * FROM Student
SELECT * FROM Class
SELECT * FROM Student_Subject
SELECT * FROM Subject


--������(ȡ����,��ȥ��INNER�ؼ���)***********************************************************************
SELECT * FROM Student
INNER JOIN Class ON Class.ID=Student.ClassID


--������(��ȥ��OUTER�ؼ���)***********************************************************************

--������
SELECT * FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
WHERE Class.ID IS NULL--ȥ����������


--������
SELECT * FROM Student
RIGHT OUTER JOIN Class ON Class.ID=Student.ClassID
WHERE Student.ID IS NULL--ȥ����������

--ȫ����
SELECT * FROM Student
FULL OUTER JOIN Class ON Class.ID=Student.ClassID
WHERE Class.ID IS NULL OR Student.ID IS NULL--ȥ����������
 
 
--��������***********************************************************************
SELECT * FROM Student
CROSS JOIN Class 

--���ӵ������﷨***********************************************************************

--Ч����������һ����ȥ��where�Ӿ�ͽ������ӽ��һ�����������ܸߣ�
SELECT * FROM Student,Class
WHERE Class.ID=Student.ClassID







