--Student和Student_Info是一对一关系，整理起表连接

SELECT * FROM Student --学生表
SELECT * FROM Student_Info --学生-信息表


--内连接
SELECT * FROM Student
INNER JOIN Student_Info ON Student_Info.StudentID=Student.ID

--左连接
SELECT * FROM Student
LEFT OUTER JOIN Student_Info ON Student_Info.StudentID=Student.ID
WHERE Student_Info.ID IS NULL--去掉交集部分

--右连接
SELECT * FROM Student
RIGHT OUTER JOIN Student_Info ON Student_Info.StudentID=Student.ID
WHERE Student.ID IS NULL--去掉交集部分

--全连接
SELECT * FROM Student
FULL OUTER JOIN Student_Info ON Student_Info.StudentID=Student.ID
WHERE Student_Info.ID IS NULL OR Student.ID IS NULL--去掉交集部分

--交叉连接
SELECT * FROM Student
CROSS JOIN Student_Info




--例子解析***********************************************************************

--交叉连接，等于左右表数据都查询出来
SELECT * FROM Student
CROSS JOIN Student_Info

--取左一条数据和右表交叉连接，等于左表一条记录连接了右表所有数据
SELECT * FROM Student
CROSS JOIN Student_Info
WHERE Student.ID=1


SELECT * FROM Student
LEFT JOIN Student_Info ON Student_Info.StudentID=Student.ID 
WHERE Student.ID=1


