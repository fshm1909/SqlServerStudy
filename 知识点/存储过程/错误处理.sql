--�����洢����
CREATE PROC sp_test3
@ERROR INT OUTPUT	--�������
AS
BEGIN
	--�ֶ���������
	RAISERROR(
	'�ֶ���������'
	,2
	,3
	)	

	SET @ERROR=@@ERROR
END
GO

--�޸Ĵ洢����
ALTER PROC sp_test3
@ERROR INT OUTPUT	--�������
AS
BEGIN
	RAISERROR('�ֶ���������',2,3)	--�ֶ���������

	SET @ERROR=@@ERROR
END
GO

--ִ�д洢����
DECLARE @ERROR INT	--�������

EXEC sp_test3 @ERROR OUT

SELECT @ERROR
