--************************************************************************************************************************************************
--���޸ı�����
exec sp_rename 'tb_a','tb_a2'
exec sp_rename 'tb_a2','tb_a'

--************************************************************************************************************************************************
--���޸ı�-�ֶβ�����
--����ֶ�
alter table tb_a
add Field20 int null default('111')	--add column д���ᱨ��
,Field21 int not null 	--�������

--�޸��ֶ�
alter table tb_a
alter column Field20 int not null

--ɾ���ֶ�
alter table tb_a
drop column Field20,Field21	--����ɾ��

--************************************************************************************************************************************************
--���޸ı�-Լ��������
--����Լ��
alter table tb_c
add constraint pk_tb_c 
primary key (Field1)

--���Լ��
alter table tb_a
add constraint fk_tb_a6 
foreign key (Field6) references tb_b(ID)

--ΨһԼ��
alter table tb_a
add constraint uk_tb_a 
unique (Field14)


--��ɾ��Լ����
alter table tb_c
drop constraint pk_tb_c


--������Լ��ʱ����֮ǰ�����ݡ�
alter table tb_a
with nocheck	
add constraint fk_tb_a454 
foreign key (Field6) references tb_b(ID)


--������Լ����ֻ�ܽ������Լ������checkԼ��
alter table tb_a
nocheck	
constraint fk_tb_a454 

--������Լ����
alter table tb_a
check
constraint fk_tb_a454 

