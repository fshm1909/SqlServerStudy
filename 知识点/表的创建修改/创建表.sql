--����������ɾ��
if OBJECT_ID(N'tb_a',N'U') is not null DROP TABLE tb_a

--������
create table tb_a
(
	--ID int NOT NULL PRIMARY KEY	--PRIMARY KEY������Լ��
	Field1 NVARCHAR(50)		--���ֶα�׼�����ֶ����� �������� �����
	,Field2 NVARCHAR(50) NULL	--NULL���Ƿ�����nullֵ��Ĭ��NOT NULL��һ����ʾ��������Ϊ���кܶ����û�ı����Ĭ��ֵ����
	,Field3 int identity(0,1) NOT NULL		--IDENTITY(0,1)��ʾ��ʶ�淶����ʶ����Ϊ0����ʼֵ������ʶ����Ϊ1;����дIDENTITY��û�����ţ�Ĭ��Ϊ(1,1)����ʶ�б���Ϊ��ֵ���ͣ����ܺ�Ĭ��ֵһ��ʹ�ã���ֻ����Ϊÿ����ָ��һ����ʶ�С���

	--����Լ�������ڱ���ʱ��Լ�����ƶ���ϵͳ�Զ����ɵģ�
	--���������á�
	,Field5 int NOT NULL PRIMARY KEY	--PRIMARY KEY������Լ�������������ظ���Ψһ�ԣ�������Ϊ�գ���������NOT NULL����	
	--,CONSTRAINT [PK_tb_a] PRIMARY KEY CLUSTERED ([Field5] ASC) --����Լ����һ��д��

	--��������á�
	,Field6 int NOT NULL FOREIGN KEY references tb_b(ID)	--FOREIGN KEY�����Լ���������õ��б���������Լ����ΨһԼ����
	--,Field7 int NOT NULL FOREIGN KEY references tb_a(Field5)	--���Լ���������������
	,Field8 int NOT NULL FOREIGN KEY references tb_b(ID) NOT FOR REPLICATION 	--NOT FOR REPLICATION :ǿ�����ڸ���
	,Field9 int NOT NULL references tb_b(ID)	--���Լ�� ��д	
	
	--���������������
	,Field10 int NULL FOREIGN KEY REFERENCES tb_b(Field1)	
	ON UPDATE NO ACTION	--Ĭ��ֵ����ִ���κβ���
	ON DELETE NO ACTION	--Ĭ��ֵ����ִ���κβ���	

	,Field11 int NULL FOREIGN KEY REFERENCES tb_b(Field2)	
	ON UPDATE CASCADE	--������ָ�������ͼ����ĳһ���еļ�ֵ �������еļ�ֵ����������������е���������ã���������������ֵҲ�����µ�Ϊ�ü�ָ������ֵ�� (��� timestamp ������������ü���һ���֣�����ָ�� CASCADE�� )
	ON DELETE CASCADE	--������ָ�������ͼɾ��ĳһ�У������еļ�����������������е���������ã���Ҳ��ɾ�����а�����Щ������С�

	,Field12 int NULL FOREIGN KEY REFERENCES tb_c(Field1)	
	ON UPDATE SET NULL	--����NULL��ָ�������ͼ����ĳһ�� �������еļ�����������������е���������ã�����ɱ��������е����������ֵ��������Ϊ NULL��Ŀ������������б����Ϊ��ֵ����Լ���ſ�ִ�С�
	ON DELETE SET NULL	--����NULL��ָ�������ͼɾ��ĳһ�У������еļ�����������������е���������ã�����ɱ��������е����������ֵ��������Ϊ NULL��Ŀ������������б����Ϊ��ֵ����Լ���ſ�ִ�С�
	
	,Field13 int NULL FOREIGN KEY REFERENCES tb_d(Field1)	
	ON UPDATE SET DEFAULT	--����Ĭ��ֵ��ָ�������ͼɾ��ĳһ�� �������еļ�����������������е���������ã�����ɱ��������е����������ֵ��������Ϊ���ǵ�Ĭ��ֵ��Ŀ������������б���� ��Ĭ��ֵ���壬��Լ���ſ�ִ�С����ĳ���п�Ϊ��ֵ������δ������ʽ��Ĭ��ֵ�����ʹ�� NULL ��Ϊ���е���ʽĬ��ֵ���� ON DELETE SET DEFAULT �����õ��κηǿ�ֵ�������б����ж�Ӧ��ֵ������ά�����Լ������Ч�ԡ�
	ON DELETE SET DEFAULT	--����Ĭ��ֵ��ָ�������ͼ����ĳһ�� �������еļ�����������������е���������ã�����ɱ��������е����������ֵ��������Ϊ���ǵ�Ĭ��ֵ��Ŀ������������б���� ��Ĭ��ֵ���壬��Լ���ſ�ִ�С����ĳ���п�Ϊ��ֵ������δ������ʽ��Ĭ��ֵ�����ʹ�� NULL ��Ϊ���е���ʽĬ��ֵ���� ON UPDATE SET DEFAULT �����õ��κηǿ�ֵ�������б����ж�Ӧ��ֵ������ά�����Լ������Ч�ԡ�
	--Field12��Field13����������˲�ͬ�ı���Ϊ��һ��������Ŀ��ܻᵼ��ѭ������ؼ���·���������ˣ�
	
	--��ΨһԼ����
	,Field14 int NOT NUll unique



	--��Ĭ��ֵԼ����
	,Field15 VARCHAR(100) default('Ĭ��ֵ') NULL		--default:Ĭ��ֵ

	--��checkԼ����
	,Field16 int NUll check(Field16<1000) --check()����Ӻ�where�Ӿ����һ��������

)
ON [PRIMARY]--ָ���ļ��飨Ĭ����PRIMARY�����ļ��飩����PRIMARY��[],��Ȼ����



--if OBJECT_ID(N'tb_b',N'U') is not null DROP TABLE tb_b
--create table tb_b
--(
--	ID int NOT NULL PRIMARY KEY 
--	,Field1 int NULL unique 
--	,Field2 int NULL unique 
--)

--if OBJECT_ID(N'tb_c',N'U') is not null DROP TABLE tb_c
--create table tb_c
--(
--	Field1 int NULL unique 
--	,Field2 int NULL unique default(1) 
--)

--if OBJECT_ID(N'tb_d',N'U') is not null DROP TABLE tb_d
--create table tb_d
--(
--	Field1 int NULL unique default(1) 
--)