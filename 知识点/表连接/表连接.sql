
SELECT * FROM Student
SELECT * FROM Class
SELECT * FROM Student_Subject
SELECT * FROM Subject


--������(ȡ����,��ȥ��INNER�ؼ���)***********************************************************************
--�����Ӻ������ӵ�ON����ӵ���ȡ�������������������ӾͲ���ҪON�ؼ��֣�
SELECT * FROM Student
INNER JOIN Class 
ON Class.ID=Student.ClassID 


--������(��ȥ��OUTER�ؼ���)***********************************************************************

--������
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Class.ID=Student.ClassID 
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


--�����е�������ѯ***********************************************************************
--ON֮����������������㽻�����֣�һ��������Ҫ����֮���������ϵ��û�������ϵ�ı�һ��ʹ�ý������ӣ���Ϊ��������û��ON�Ӿ䣩��
--����������⣺on�����������ӱ�������õģ�where���������ӱ�֮������ӱ��ٽ��й��ˡ�

--��ʹ��left joinʱ������on�������Ƿ����㣬���᷵���������м�¼����������������ļ�¼���������Ӧ�ļ�¼���������������ڲ����������ļ�¼�����ұ��ֶ�ȫ����null

--��������������ļ�¼���������Ӧ�ļ�¼����������
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Class.ID=Student.ClassID
AND Student.ID<3

--���ڲ����������ļ�¼�����ұ��ֶ�ȫ����null
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Class.ID=Student.ClassID
AND Student.ID<0


--��ʹ��right joinʱ�����ƣ�ֻ������ȫ�������ұ�����м�¼
SELECT * FROM Student
RIGHT OUTER JOIN Class 
ON Class.ID=Student.ClassID
AND CLASS.ID<3


--��ʹ��inner joinʱ��������where��ȫ��ͬ��
SELECT * FROM Student
INNER JOIN Class 
ON Class.ID=Student.ClassID 
AND Student.ID<4


--ON����������������Ƚ����˽������ӣ�Ȼ��������ON���������������������Ӱ����ʣ�����ݲ�ѯ����
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Student.ID<3 AND Class.ID<3

--��ON����������ĳ�true�����ǽ��������ˡ������ӵ�Ч����һ����
SELECT * FROM Student LEFT OUTER JOIN Class ON 1=1
SELECT * FROM Student RIGHT OUTER JOIN Class ON 1=1
SELECT * FROM Student FULL OUTER JOIN Class ON 1=1
--��ON����������ĳ�false����û�н������֣������������͵�����ѯһ��������д����ûɶ���壻
SELECT * FROM Student LEFT OUTER JOIN Class ON 1=0
SELECT * FROM Student RIGHT OUTER JOIN Class ON 1=0
SELECT * FROM Student FULL OUTER JOIN Class ON 1=0

--һ����û�н����ˣ�һ�����н�������ȥ����
SELECT * FROM Student LEFT OUTER JOIN Class ON 1=0
SELECT * FROM Student LEFT OUTER JOIN Class ON Class.ID=Student.ClassID 
WHERE Class.ID IS NULL--ȥ����������



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

