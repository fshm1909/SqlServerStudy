--ɾ�����ݿ�	****************************************************************************************

IF EXISTS (SELECT * FROM sysdatabases WHERE name ='Test')
DROP DATABASE Test

--�޸����ݿ�����	****************************************************************************************
ALTER DATABASE Test
MODIFY NAME = Test2
GO

--�����ݿ�����ļ�	****************************************************************************************
ALTER DATABASE Test
ADD FILE 
(
	NAME = 'Test_4',	--�߼�����
	FILENAME='D:\DataBase\Test_4.ndf',	--·��+�ļ���
	SIZE=4MB,	--��ʼ��С��MB��
	MAXSIZE=UNLIMITED,	--�ļ����������ֵ
	FILEGROWTH=10%	--�ļ���������
),
(
	NAME = 'Test_5',	--�߼�����
	FILENAME='D:\DataBase\Test_5.ndf',	--·��+�ļ���
	SIZE=4MB,	--��ʼ��С��MB��
	MAXSIZE=UNLIMITED,	--�ļ����������ֵ
	FILEGROWTH=10%	--�ļ���������
) 
TO FILEGROUP group1	--��ӵ��ļ���
GO 

--�����ݿ������־�ļ�	****************************************************************************************
ALTER DATABASE Test
ADD LOG FILE 
(
	NAME='Test_log2',        -- ��־�ļ����߼�����
	FILENAME='D:\DataBase\Test_log2.mdf',    -- ��־�ļ�����������
	SIZE=2mb,            --��־�ļ��ĳ�ʼ��С
	MAXSIZE=UNLIMITED,        --��־�ļ����������ֵ
	FILEGROWTH=1mb        --��־�ļ���������
),
(
	NAME='Test_log3',        -- ��־�ļ����߼�����
	FILENAME='D:\DataBase\Test_log3.mdf',    -- ��־�ļ�����������
	SIZE=2mb,            --��־�ļ��ĳ�ʼ��С
	MAXSIZE=UNLIMITED,        --��־�ļ����������ֵ
	FILEGROWTH=1mb        --��־�ļ���������
) 
GO 

--ɾ���ļ�	****************************************************************************************
ALTER DATABASE Test
REMOVE FILE Test_4
ALTER DATABASE Test
REMOVE FILE Test_5

ALTER DATABASE Test
REMOVE FILE Test_log2
ALTER DATABASE Test
REMOVE FILE Test_log3

GO 


--�޸��ļ�	****************************************************************************************
ALTER DATABASE Test
MODIFY FILE
(
	NAME = 'Test_1'	--�߼�����
	--,NEWNAME = 'Test_22'	--������
	--,FILENAME='D:\DataBase\Test_1.ndf'	--·��+�ļ���
	--,SIZE=10MB	--��ʼ��С��MB��
	--,MAXSIZE=UNLIMITED	--�ļ����������ֵ
	--,FILEGROWTH=10%	--�ļ���������
	FILEGROUP=group1
)

GO











