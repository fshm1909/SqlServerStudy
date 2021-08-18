
SELECT * FROM Student
SELECT * FROM Class
SELECT * FROM Student_Subject
SELECT * FROM Subject


--内连接(取交集,可去掉INNER关键字)***********************************************************************
SELECT * FROM Student
INNER JOIN Class ON Class.ID=Student.ClassID


--外连接(可去掉OUTER关键字)***********************************************************************

--左连接
SELECT * FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
WHERE Class.ID IS NULL--去掉交集部分


--右连接
SELECT * FROM Student
RIGHT OUTER JOIN Class ON Class.ID=Student.ClassID
WHERE Student.ID IS NULL--去掉交集部分

--全连接
SELECT * FROM Student
FULL OUTER JOIN Class ON Class.ID=Student.ClassID
WHERE Class.ID IS NULL OR Student.ID IS NULL--去掉交集部分
 
 
--交叉连接***********************************************************************
SELECT * FROM Student
CROSS JOIN Class 

--连接的早期语法***********************************************************************

--效果和内连接一样（去掉where子句和交叉连接结果一样，但是性能高）
SELECT * FROM Student,Class
WHERE Class.ID=Student.ClassID







