
SELECT * FROM Student
SELECT * FROM Class
SELECT * FROM Student_Subject
SELECT * FROM Subject


--内连接(取交集,可去掉INNER关键字)***********************************************************************
--内连接和外连接的ON后面加的是取交集的条件，交叉连接就不需要ON关键字，
SELECT * FROM Student
INNER JOIN Class 
ON Class.ID=Student.ClassID 


--外连接(可去掉OUTER关键字)***********************************************************************

--左连接
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Class.ID=Student.ClassID 
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


--连接中的条件查询***********************************************************************
--ON之后的条件是用来满足交集部分，一般来讲需要两表之间有外键关系，没有外键关系的表一般使用交叉连接（因为交叉连接没有ON子句）。
--可以这样理解：on是在生成连接表的起作用的，where是生成连接表之后对连接表再进行过滤。

--当使用left join时，无论on的条件是否满足，都会返回左表的所有记录，对于满足的条件的记录，两个表对应的记录会连接起来，对于不满足条件的记录，那右表字段全部是null

--对于满足的条件的记录，两个表对应的记录会连接起来
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Class.ID=Student.ClassID
AND Student.ID<3

--对于不满足条件的记录，那右表字段全部是null
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Class.ID=Student.ClassID
AND Student.ID<0


--当使用right join时，类似，只不过是全部返回右表的所有记录
SELECT * FROM Student
RIGHT OUTER JOIN Class 
ON Class.ID=Student.ClassID
AND CLASS.ID<3


--当使用inner join时，功能与where完全相同。
SELECT * FROM Student
INNER JOIN Class 
ON Class.ID=Student.ClassID 
AND Student.ID<4


--ON后面的条件，像是先进行了交叉连接，然后在满足ON后面的条件，最后按照左连接把左表剩余数据查询出来
SELECT * FROM Student
LEFT OUTER JOIN Class 
ON Student.ID<3 AND Class.ID<3

--把ON后面的条件改成true，就是交叉连接了。外连接的效果都一样。
SELECT * FROM Student LEFT OUTER JOIN Class ON 1=1
SELECT * FROM Student RIGHT OUTER JOIN Class ON 1=1
SELECT * FROM Student FULL OUTER JOIN Class ON 1=1
--把ON后面的条件改成false，就没有交集部分；数据上来讲和单独查询一样，这样写好像没啥意义；
SELECT * FROM Student LEFT OUTER JOIN Class ON 1=0
SELECT * FROM Student RIGHT OUTER JOIN Class ON 1=0
SELECT * FROM Student FULL OUTER JOIN Class ON 1=0

--一个是没有交集了，一个是有交集但是去掉了
SELECT * FROM Student LEFT OUTER JOIN Class ON 1=0
SELECT * FROM Student LEFT OUTER JOIN Class ON Class.ID=Student.ClassID 
WHERE Class.ID IS NULL--去掉交集部分



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

