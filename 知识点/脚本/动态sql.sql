
EXEC ('SELECT * FROM Class')

DECLARE @field NVARCHAR(100)='*'
EXEC ('SELECT '+@field+' FROM Class')

EXEC ('DECLARE @a NVARCHAR(100)=1 SELECT * FROM Class WHERE ID=@a')


--EXEC������	*****************************************************************
--EXEC���ܵ����ⲿ����
DECLARE @a NVARCHAR(100)=1
EXEC ('SELECT * FROM Class WHERE ID=@a')

--���ܵ���EXEC�ڲ�����
EXEC ('DECLARE @a NVARCHAR(100)=1')
SELECT * FROM Class WHERE ID=@a
