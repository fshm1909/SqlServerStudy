
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
--WHERE Class.ID IS NULL--去掉交集部分

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


--连接中的条件查询***********************************************************************
--可以这样理解：on是在生成连接表的起作用的，where是生成连接表之后对连接表再进行过滤。
--当使用left join时，无论on的条件是否满足，都会返回左表的所有记录，对于满足的条件的记录，两个表对应的记录会连接起来，对于不满足条件的记录，那右表字段全部是null
SELECT * FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
AND Student.ID<3

SELECT * FROM Student
LEFT OUTER JOIN Class ON Class.ID=Student.ClassID
AND Student.ID<0

--当使用right join时，类似，只不过是全部返回右表的所有记录
--当使用inner join时，功能与where完全相同。


--连接的早期语法***********************************************************************

--内连接
SELECT * FROM Student,Class
WHERE Class.ID=Student.ClassID


--左连接(2005以上版本不支持)
SELECT * FROM Student,Class
WHERE Class.ID *= Student.ClassID

--左连接(2005以上版本不支持)
SELECT * FROM Student,Class
WHERE Class.ID =* Student.ClassID


--交叉连接（但是性能高）
SELECT * FROM Student,Class

