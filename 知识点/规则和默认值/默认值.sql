--Ĭ��ֵ�﷨�͹����﷨�е�����
--�������Ʊ��checkԼ����Ĭ��ֵ���Ʊ��Ĭ��ֵԼ�����������Ʊ��identity


--����Ĭ��ֵ
create default df_1
as 0

--��Ĭ��ֵ
exec sp_bindefault df_1,'tb_a.Field9' --�󶨵��в�����Ĭ��ֵԼ��

--���Ĭ��ֵ
exec sp_unbindefault 'tb_a.Field9' 

--ɾ��Ĭ��ֵ
drop default df_1



--������ʾ�洢���������Ķ��󣨹���Ĭ��ֵ���洢���̣�
exec sp_depends sp_test


sp_help 'sp_bindefault' 
sp_help 'sp_unbindefault'

