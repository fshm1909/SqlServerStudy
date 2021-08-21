
--************************************************************************************************************************************************
--�����洢����
CREATE PROC sp_test2
@input_val1 INT,	--�������
@input_val2 INT=0,	--�������
@input_val3 INT=0,	--�������
@output_val1 INT OUTPUT,	--�������
@output_val2 INT OUTPUT,	--�������
@output_val3 INT OUTPUT		--�������
AS
BEGIN
	SET @output_val1=1
	SET @output_val2=2
	SET @output_val3=3

	RETURN 100;	--����ֵ��Ĭ�Ϸ���ֵΪ0������ֵ���ͱ���Ϊ����������״̬�룩
END
GO

--************************************************************************************************************************************************
--�޸Ĵ洢����
ALTER PROC sp_test2
@input_val1 INT,	--�������
@input_val2 INT=0,	--�������
@input_val3 INT=0,	--�������
@output_val1 INT OUTPUT,	--�������
@output_val2 INT OUTPUT,	--�������
@output_val3 INT OUTPUT		--�������
AS
BEGIN
	SET @output_val1=1
	SET @output_val2=2
	SET @output_val3=3

	RETURN 100;	--����ֵ
END
GO

--************************************************************************************************************************************************
--ɾ���洢����
DROP PROC sp_test2



--************************************************************************************************************************************************
--ִ�д洢����
DECLARE @return_val INT	--����ֵ�����ڲ���洢���̷���ֵ
DECLARE @input_val1 INT=0	--�������
DECLARE @input_val2 INT=0	--�������
DECLARE @input_val3 INT=0	--�������
DECLARE @output_val1 INT	--�������
DECLARE @output_val2 INT	--�������
DECLARE @output_val3 INT	--�������

EXEC @return_val=sp_test2 
@input_val1,
@input_val2,
@input_val3,
@output_val1 out,
@output_val2 out,
@output_val3 out

SELECT @return_val,@output_val1,@output_val2,@output_val3
