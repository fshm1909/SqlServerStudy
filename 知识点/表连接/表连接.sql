
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
--WHERE Class.ID IS NULL--ȥ����������

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


--�����е�������ѯ***********************************************************************
--����������⣺on�����������ӱ�������õģ�where���������ӱ�֮������ӱ��ٽ��й��ˡ�
--��ʹ��left joinʱ������on�������Ƿ����㣬���᷵���������м�¼����������������ļ�¼���������Ӧ�ļ�¼���������������ڲ����������ļ�¼�����ұ��ֶ�ȫ����null
SELECT * FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
AND Student.ID<3

SELECT * FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
AND Student.ID<0

--��ʹ��right joinʱ�����ƣ�ֻ������ȫ�������ұ�����м�¼
--��ʹ��inner joinʱ��������where��ȫ��ͬ��


--���ӵ������﷨***********************************************************************

--������
SELECT * FROM Student,Class
WHERE Class.ID=Student.ClassID


--������(2005���ϰ汾��֧��)
SELECT * FROM Student,Class
WHERE Class.ID *= Student.ClassID

--������(2005���ϰ汾��֧��)
SELECT * FROM Student,Class
WHERE Class.ID =* Student.ClassID


--�������ӣ��������ܸߣ�
SELECT * FROM Student,Class

