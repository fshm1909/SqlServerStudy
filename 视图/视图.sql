
--创建视图	****************************************************************************************
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

--修改视图	****************************************************************************************
--(保留原视图的任何权限，保留了任何依赖信息)

ALTER VIEW vm_Student
AS
SELECT ID,Name,Age FROM Student
GO

--删除视图	****************************************************************************************
DROP VIEW vm_Student,vm_Student2,vm_Student3


--查询	****************************************************************************************
SELECT * FROM vm_Student
SELECT * FROM vm_Student2
SELECT * FROM vm_Student3

