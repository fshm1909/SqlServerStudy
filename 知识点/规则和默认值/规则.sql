--������һ�����󣬿��԰󶨺ܶ����Լ��ֻ���ڱ��ڡ�
--����ֻ������һ���У����ǿ��԰󶨶���У���һ�������ڲ��ܻ�ȡ����һ���С�checkԼ������ͬʱ���ö����

--��������
create rule rl_1
AS
@value >0

--û���޸Ĺ����﷨

--�󶨹���
exec sp_bindrule 'rl_1','tb_c.Field1'	--(��������,����Ҫ�󶨵Ķ���futureonly_flag(�ò���Ĭ�Ϲرգ�ֵΪTrue��1ʱ����ô�󶨹���ֻӦ�����û��Զ����������Ͱ󶨵�����))

--������
exec sp_unbindrule 'tb_c.Field1'	--����@objname���󶨶���

--ɾ������
drop rule rl_1	--�����ö�������ɾ��



--������ʾ�洢���������Ķ��󣨹���Ĭ��ֵ���洢���̣�
exec sp_depends sp_test


sp_help 'sp_bindrule' 
sp_help 'sp_unbindrule'


