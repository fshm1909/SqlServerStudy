--Student��Student_Info��һ��һ��ϵ�������������

SELECT * FROM Student --ѧ����
SELECT * FROM Student_Info --ѧ��-��Ϣ��


--������
SELECT * FROM Student
INNER JOIN Student_Info ON Student_Info.StudentID=Student.ID

--������
SELECT * FROM Student
LEFT OUTER JOIN Student_Info ON Student_Info.StudentID=Student.ID
WHERE Student_Info.ID IS NULL--ȥ����������

--������
SELECT * FROM Student
RIGHT OUTER JOIN Student_Info ON Student_Info.StudentID=Student.ID
WHERE Student.ID IS NULL--ȥ����������

--ȫ����
SELECT * FROM Student
FULL OUTER JOIN Student_Info ON Student_Info.StudentID=Student.ID
WHERE Student_Info.ID IS NULL OR Student.ID IS NULL--ȥ����������
