--APPLY����������ұ���ʽӦ�õ������ʽ�е�ÿһ�С�������JOIN�����ȼ����Ǹ�����ʽ�����ԣ�APPLY��ѡ���߼��ؼ�������ʽ�����ּ���������߼�˳��������ұ��ʽ�����������ʽ��
--ʹ��apply�������ȼ��������룬�ú�Ϊ�������е�ÿһ�м���һ�������롣
--APPLY��������ʽ��һ����OUTER APPLY��һ����CROSS APPLY����������ָ��OUTER����ζ�Ž�����н�����ʹ�ұ���ʽΪ�յ������ʽ�е��У���ָ��CROSS�����෴��������в�����ʹ�ұ���ʽΪ�յ������ʽ�е��С�


--��1
SELECT * FROM Student
CROSS APPLY (select '1' as a,2 as b,null as c) as a

SELECT * FROM Student
OUTER APPLY (select '1' as a,2 as b,null as c) as a


--��2
SELECT * FROM Student
CROSS APPLY (select null as a) as a

SELECT * FROM Student
OUTER APPLY (select null as a) as a


--��3
SELECT * FROM Student
CROSS APPLY Class 
WHERE Student.ClassID=Class.ID


SELECT * FROM Student
OUTER APPLY Class 
--WHERE Student.ClassID=Class.ID


