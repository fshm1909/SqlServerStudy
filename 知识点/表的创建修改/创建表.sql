--����������ɾ��
if OBJECT_ID(N'tb_a',N'U') is not null DROP TABLE tb_a

--������
create table tb_a
(
	ID int NOT NULL PRIMARY KEY --PRIMARY KEY������Լ��
	,Field1 NVARCHAR(50) --���ֶα�׼�����ֶ����� �������� �����
	,Field2 NVARCHAR(50) NULL--NULL���Ƿ�����nullֵ��Ĭ��NOT NULL��һ����ʾ��������Ϊ���кܶ����û�ı����Ĭ��ֵ����
	,Field3 VARCHAR(100) default('Ĭ��ֵ') NULL --default:Ĭ��ֵ
	,Field4 int identity(0,1) NOT NULL --IDENTITY(0,1)��ʾ��ʶ�淶����ʶ����Ϊ0����ʼֵ������ʶ����Ϊ1;����дIDENTITY��û�����ţ�Ĭ��Ϊ(1,1)����ʶ�б���Ϊ��ֵ���ͣ����ܺ�Ĭ��ֵһ��ʹ�ã�ֻ����Ϊÿ����ָ��һ����ʶ�С�

)
--ON filegroup--ָ���ļ��飨Ĭ����PRIMARY�����ļ��飩��




