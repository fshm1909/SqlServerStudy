USE master
GO

IF EXISTS(SELECT * FROM sysdatabases where name='Test')
BEGIN
    SELECT '�����ݿ��Ѵ���'
    --DROP DATABASE Test        --��������ݿ��Ѿ����ڣ���ô��ɾ����
END
ELSE
BEGIN
    CREATE DATABASE Test
    ON PRIMARY        --���ļ���
    (
        NAME='Test',	--�߼�����
        FILENAME='D:\DataBase\Test.mdf',	--·��+�ļ���
        SIZE=5MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
        FILEGROWTH=10%	--�ļ���������
    ),
	FILEGROUP group1  --������һ�����ļ���
	(
		NAME = 'Test_1',	--�߼�����
		FILENAME='D:\DataBase\Test_1.ndf',	--·��+�ļ���
		SIZE=4MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
		FILEGROWTH=10%	--�ļ���������
	),
	(
		NAME = 'Test_2',	--�߼�����
		FILENAME='D:\DataBase\Test_2.ndf',	--·��+�ļ���
		SIZE=4MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
		FILEGROWTH=10%	--�ļ���������
	),
	(
		NAME = 'Test_3',	--�߼�����
		FILENAME='D:\DataBase\Test_3.ndf',	--·��+�ļ���
		SIZE=4MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
		FILEGROWTH=10%	--�ļ���������
	)

    LOG ON	-- ��־�ļ�
    (
        NAME='Test_log',        -- ��־�ļ����߼�����
        FILENAME='D:\DataBase\Test_log.mdf',    -- ��־�ļ�����������
        SIZE=2mb,            --��־�ļ��ĳ�ʼ��С
        MAXSIZE=UNLIMITED,        --��־�ļ����������ֵ
        FILEGROWTH=1mb        --��־�ļ���������
    )
END