--������ֵ����
CREATE FUNCTION fun_tab1()--��������
RETURNS TABLE--����ֵ����
AS
--BEGIN --������BEGIN END
	RETURN (SELECT * FROM Class)
--END



--����ʹ��************************************
--��1
SELECT * FROM dbo.fun_tab1() --ʹ�ñ�һ��ʹ�ñ�ֵ����





