
SELECT * FROM Student
SELECT * FROM Class
SELECT * FROM Student_Subject
SELECT * FROM Subject

--字段子查询***********************************************************************
SELECT *,(SELECT TOP 1 Name FROM Class) AS ClassName FROM Student


--FROM子查询***********************************************************************
SELECT * FROM (SELECT * FROM Student) AS a


--WHERE子查询***********************************************************************

--比较运算符子查询
SELECT * FROM Student
WHERE ClassID=(SELECT ID FROM Class WHERE Name='四年（2）班')

--IN
SELECT * FROM Student
WHERE ClassID IN(SELECT ID FROM Class)

--NOT IN
SELECT * FROM Student
WHERE ClassID NOT IN(SELECT ID FROM Class)

--EXISTS子查询(子查询是否有结果)
SELECT * FROM Student
WHERE EXISTS(SELECT ID FROM Class WHERE ID=Student.ClassID)

--ANY、SOME子查询(任意一个子查询满足条件)
SELECT * FROM Student
WHERE Age=ANY(SELECT 10)
--WHERE Age>SOME(SELECT 10)
--WHERE Age IN(SELECT 10)--效果同=ANY

--ALL子查询(所有子查询都满足条件)
SELECT * FROM Student
WHERE Age>ALL(SELECT 10)




