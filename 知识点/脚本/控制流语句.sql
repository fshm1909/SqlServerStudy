
--************************************************************************************************************************************************
--IF...ELSE ��� 
IF EXISTS(SELECT * FROM Class WHERE ID=1)
	BEGIN
		SELECT * FROM Class WHERE ID=1
	END
ELSE
	BEGIN
		PRINT '��ѯ������'
	END

	
--************************************************************************************************************************************************
--CASE ��� 

--�÷�1
DECLARE @v int=ROUND((3-0)*rand(),0)

SELECT 
CASE @v
WHEN 0 THEN  '��'
WHEN 1 THEN  'һ'
WHEN 2 THEN  '��'
WHEN 3 THEN  '��'
--ELSE  ''
END

--�÷�2
DECLARE @v int=ROUND((3-0)*rand(),0)

SELECT 
CASE 
WHEN @v=0 THEN  '��'
WHEN @v=1 THEN  'һ'
WHEN @v=2 THEN  '��'
WHEN @v=3 THEN  '��'
--ELSE  ''
END



--************************************************************************************************************************************************
--WHILE ��� 

DECLARE @i int=ROUND((10-0)*rand(),0)
WHILE @i<10
	BEGIN
		SET @i=@i+1;
		PRINT @i
		--CONTINUE; --������һѭ��
		--BREAK; --�˳�ѭ��
		--RETURN; --�˳�ѭ��
	END
	
	
--************************************************************************************************************************************************
--WAITFOR ��� 
--�ӳ�5����ִ�У��24Сʱ��
WAITFOR DELAY '0:0:05'
SELECT * FROM Class

--������ִ�У��24Сʱ��
WAITFOR TIME '15:19:00'
SELECT * FROM Class




--************************************************************************************************************************************************
--TRY/CATCH ��� 
BEGIN TRY
	--�ֶ���������
	--RAISERROR(
	--'�ֶ���������'
	--,2
	--,3
	--)
	
	INSERT INTO Class(ID,ClassName) VALUES(100,'ʮ���꣨1����');
END TRY
BEGIN CATCH
	SELECT 
	ERROR_NUMBER()--ʵ�ʴ����
	,ERROR_SEVERITY()--���󼶱�
	,ERROR_STATE()--
	,ERROR_PROCEDURE()--���´���Ĵ洢���̵�����
	,ERROR_LINE()--���������к�
	,ERROR_MESSAGE();--��Ϣ�ı�

	THROW;--�����׳�����
END CATCH

