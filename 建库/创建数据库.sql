USE master
GO

IF EXISTS(SELECT * FROM sysdatabases where name='Test2')
BEGIN
    SELECT '�����ݿ��Ѵ���'
    --DROP DATABASE Test2        --��������ݿ��Ѿ����ڣ���ô��ɾ����
END
ELSE
BEGIN
    CREATE DATABASE Test2
    ON PRIMARY        --���ļ���
    (
        NAME='Test2',	--�߼�����
        FILENAME='E:\MyProject\DataBase\SqlServer\Test2.mdf',	--·��+�ļ���
        SIZE=5MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
        FILEGROWTH=10%	--�ļ���������
    ),
	FILEGROUP group1  --������һ�����ļ���
	(
		NAME = 'Test2_1',	--�߼�����
		FILENAME='E:\MyProject\DataBase\SqlServer\Test2_1.ndf',	--·��+�ļ���
		SIZE=4MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
		FILEGROWTH=10%	--�ļ���������
	),
	(
		NAME = 'Test2_2',	--�߼�����
		FILENAME='E:\MyProject\DataBase\SqlServer\Test2_2.ndf',	--·��+�ļ���
		SIZE=4MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
		FILEGROWTH=10%	--�ļ���������
	),
	(
		NAME = 'Test2_3',	--�߼�����
		FILENAME='E:\MyProject\DataBase\SqlServer\Test2_3.ndf',	--·��+�ļ���
		SIZE=4MB,	--��ʼ��С��MB��
        MAXSIZE=UNLIMITED,	--�ļ����������ֵ
		FILEGROWTH=10%	--�ļ���������
	)

    LOG ON	-- ��־�ļ�
    (
        NAME='Test2_log',        -- ��־�ļ����߼�����
        FILENAME='E:\MyProject\DataBase\SqlServer\Test2_log.mdf',    -- ��־�ļ�����������
        SIZE=2mb,            --��־�ļ��ĳ�ʼ��С
        MAXSIZE=UNLIMITED,        --��־�ļ����������ֵ
        FILEGROWTH=1mb        --��־�ļ���������
    )
END