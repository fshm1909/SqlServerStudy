
SELECT * FROM Student
SELECT * FROM Class
SELECT * FROM Student_Subject
SELECT * FROM Subject

--�ֶ��Ӳ�ѯ***********************************************************************
SELECT *,(SELECT TOP 1 Name FROM Class) AS ClassName FROM Student


--FROM�Ӳ�ѯ***********************************************************************
SELECT * FROM (SELECT * FROM Student) AS a


--WHERE�Ӳ�ѯ***********************************************************************

--�Ƚ�������Ӳ�ѯ
SELECT * FROM Student
WHERE ClassID=(SELECT ID FROM Class WHERE Name='���꣨2����')

--IN
SELECT * FROM Student
WHERE ClassID IN(SELECT ID FROM Class)

--NOT IN
SELECT * FROM Student
WHERE ClassID NOT IN(SELECT ID FROM Class)

--EXISTS�Ӳ�ѯ(�Ӳ�ѯ�Ƿ��н��)
SELECT * FROM Student
WHERE EXISTS(SELECT ID FROM Class WHERE ID=Student.ClassID)

--ANY��SOME�Ӳ�ѯ(����һ���Ӳ�ѯ��������)
SELECT * FROM Student
WHERE Age=ANY(SELECT 10)
--WHERE Age>SOME(SELECT 10)
--WHERE Age IN(SELECT 10)--Ч��ͬ=ANY

--ALL�Ӳ�ѯ(�����Ӳ�ѯ����������)
SELECT * FROM Student
WHERE Age>ALL(SELECT 10)




