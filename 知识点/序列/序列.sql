--��������еı�ʶ�У�identity��
--�������Ʊ��checkԼ����Ĭ��ֵ���Ʊ��Ĭ��ֵԼ�����������Ʊ��identity


--��������
create sequence sequence_name2
AS INT	--��������
START WITH	1	--��ʼֵ
INCREMENT BY 1	--���������Ϊ������ݼ����������������Ϊ0
MINVALUE 1	--��Сֵ
MAXVALUE 99999	--���ֵ
CYCLE	--�Ƿ�ѭ����������ָ�����������ж������Сֵ�����ֵʱ�����ж�����Ӧ����Сֵ�����ڽ������ж�����Ϊ���ֵ�����¿�ʼ������Ӧ�����쳣�� �����ж����Ĭ��ѭ��ѡ���� NO CYCLE��
NO CACHE	--���棺ͨ������޶ȵؼ����������б������Ĵ��� IO �����������ʹ�����ж����Ӧ�ó�������ܡ����û�����ڵ�һ��ȡ���к��ڷ������Ļ����л��浱ǰ��ź����õĻ���ֵ(�������*����)�������Ժ��ٴ�����ʱ������Ҫ��ȡ����Ŵ��ڻ���ֵ���Ž�����ֵ���µ������е�ϵͳ��


--�������õ�ǰ����ֵ
alter sequence sequence_name 
restart with 100

--ʹ������
DECLARE @a INT
SELECT @a=NEXT VALUE FOR sequence_name --ȡ�����е���һ��ֵ
SELECT @a

GO

--ȡ�����е���һ��ֵ
SELECT NEXT VALUE FOR sequence_name 

--ֱ�ӻ�ȡ���е�ǰֵ
SELECT current_value,* FROM sys.sequences
WHERE name='sequence_name'

--�����ֶ�����ʹ������
select * 
,next value for sequence_name over(order by ID asc) as xx
from student