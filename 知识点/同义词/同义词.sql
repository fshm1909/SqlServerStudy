--ͬ��ʣ�ʵ�ʾ��ǵ�ǰ���ݿ����ָ������һ�����ݿ����ı�����һ��ʹ���ڿ����ݿ�����ĳ�����
--֧�ִ���ͬ��ʵ����ݿ�������ݱ���ͼ��������̣�ͬ��ʣ���������ͬ��ʱ����ȡ�

--������ͬ��ʡ�
create synonym sy_Class
for test.dbo.Class	--���õĶ�������д��������дdboʹ��ͬ��ʵ�ʱ��ᱨ��

--Ƕ��ͬ��ʣ������ˣ�������ʹ��ͬ������ӣ�
create synonym sy_Class2
for test.dbo.sy_Class

--��ɾ��ͬ��ʡ�
drop synonym sy_Class
drop synonym sy_Class2



--��ʹ��ͬ��ʡ�
select * from sy_Class
select * from sy_Class2
