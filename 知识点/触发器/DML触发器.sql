
--************************************************************************************************************************************************
--��������������
CREATE TRIGGER tri_class_INSERT
ON Class--��������ԵĶ��󣨱������ͼ��
--WITH ENCRYPTION --���ܣ������˲��ܲ鿴�ô�������alter������ʱ�����ٴμ��ϸ�ѡ�����ʧЧ��
FOR INSERT --FOR/AFTER��ʾ֮�󴥷���INSERT�����ʱ����,DELETE��ɾ��ʱ����,UPDATE���޸�ʱ����
--INSTEAD OF INSERT--INSTEAD OF��ʾ֮ǰ����
--NOT FOR REPLICATION --��ѡ���ʾ�ô�������Ӧ���ڸ���
AS 
BEGIN
	PRINT 'INSERT������������' 
	--INSERT INTO Class(ClassName) VALUES('��������ӵİ༶')--���һ������
	--SELECT * FROM Inserted;--inserted�� ��ʾ����ʱҪ��������ݡ��ñ�ֻ�����ڸô������ڲ���������
	--SELECT * FROM Deleted;--Deleted�� ��ʾ����ʱҪɾ�������ݡ��ñ�ֻ�����ڸô������ڲ���������

	--ROLLBACK TRANSACTION; --�������ع����񣨼���ֹ�������Ĳ�����
	--PRINT '�������ع���' 
END
GO


--UPDATE������
CREATE TRIGGER tri_class_UPDATE
ON Class
FOR UPDATE
AS 
BEGIN
   --PRINT 'UPDATE������������' 
	SELECT * FROM Inserted;--inserted�� ��ʾ����ʱҪ��������ݡ��ñ�ֻ�����ڸô������ڲ���������
	SELECT * FROM Deleted;--Deleted�� ��ʾ����ʱҪɾ�������ݡ��ñ�ֻ�����ڸô������ڲ���������
END
GO

--UPDATE������
CREATE TRIGGER tri_class_DELETE
ON Class
FOR DELETE
AS 
BEGIN
   --PRINT 'DELETE������������'  
	SELECT * FROM Inserted;--inserted�� ��ʾ����ʱҪ��������ݡ��ñ�ֻ�����ڸô������ڲ���������  
	SELECT * FROM Deleted;--Deleted�� ��ʾ����ʱҪɾ�������ݡ��ñ�ֻ�����ڸô������ڲ���������
END
GO

--֮ǰ�����Ĵ�����
CREATE TRIGGER tri_in_class_INSERT
ON Class
INSTEAD OF INSERT
AS 
BEGIN
   --PRINT 'DELETE������������'  
	SELECT * FROM Inserted;--inserted�� ��ʾ����ʱҪ��������ݡ��ñ�ֻ�����ڸô������ڲ���������  
	SELECT * FROM Deleted;--Deleted�� ��ʾ����ʱҪɾ�������ݡ��ñ�ֻ�����ڸô������ڲ���������
END
GO


--************************************************************************************************************************************************
--���޸Ĵ�������
ALTER TRIGGER tri_class_INSERT
ON Class
FOR INSERT
AS 
BEGIN
   PRINT 'ALTER+INSERT������������' 
END
GO


--************************************************************************************************************************************************
--��ɾ����������
DROP TRIGGER tri_class_INSERT
DROP TRIGGER tri_class_UPDATE
DROP TRIGGER tri_class_DELETE


--************************************************************************************************************************************************
--���رմ�������
ALTER TABLE Class DISABLE TRIGGER tri_class_INSERT --�ر�tri_class_INSERT������
ALTER TABLE Class DISABLE TRIGGER ALL --�ر�class�����д�����

--��һ��д��
DISABLE TRIGGER tri_class_INSERT ON Class 
DISABLE TRIGGER ALL ON Class 


--************************************************************************************************************************************************
--�����ô�������
ALTER TABLE Class ENABLE TRIGGER tri_class_INSERT --����tri_class_INSERT������
ALTER TABLE Class ENABLE TRIGGER ALL --����class�����д�����

--��һ��д��
ENABLE TRIGGER tri_class_INSERT ON Class 
ENABLE TRIGGER ALL ON Class 


--************************************************************************************************************************************************
--��ʹ�ô�������
--������ֻ���ڴ���ĳЩ��Ϊʱ����������������������

--�������ʱ����
INSERT INTO Class(ClassName) VALUES('***��')

--�޸�����ʱ����
UPDATE Class SET ClassName='***��2' WHERE ClassName='***��'

--ɾ������ʱ����
DELETE FROM Class WHERE ClassName='***��2'



SELECT * FROM Class
