--����ֵ����
--��ν���������򵥵��������Ƿ��صĽ��ֻ��һ�����������صĽ������һ�����͵�һ��ֵ��


--��������ֵ�������޲Σ�
CREATE FUNCTION fun1()--��������
RETURNS NVARCHAR(50)--����ֵ����
AS
BEGIN
	RETURN '����ֵ'
END

--��������ֵ�������вΣ�
CREATE FUNCTION fun2(@arg1 INT)--��������
RETURNS INT--����ֵ����
AS
BEGIN
	RETURN @arg1+1
END

--��������ֵ�������в�,Ƕ�ף�
CREATE FUNCTION fun3(@arg1 INT)--��������
RETURNS INT--����ֵ����
AS
BEGIN
	RETURN dbo.fun2(@arg1)*2
END


--����ʹ��************************************
--��1
SELECT dbo.fun1()
SELECT dbo.fun2(1)
SELECT dbo.fun3(1)

--��2
SELECT * FROM Class WHERE ClassName=dbo.fun1()
SELECT *,dbo.fun2(ID) FROM Class 

--��3
IF dbo.fun1()='����ֵ'
	BEGIN
		PRINT '��ѯ������'
	END
ELSE
	BEGIN
		PRINT '��ѯ������'
	END



