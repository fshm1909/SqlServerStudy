use Test

--�鿴���ݿ��ļ�����Ϣ
SELECT * FROM sys.database_files

--�鿴���ݿ������Ϣ
SELECT * FROM sys.filegroups

--�鿴���ݿ��ļ��Ļ�����Ϣ��״̬
SELECT * FROM sys.master_files

--���ݿ���ļ�Ŀ¼��ͼ�鿴�й����ݿ�Ļ�����Ϣ
SELECT * FROM sys.databases
WHERE name='Test'


sp_helpdb