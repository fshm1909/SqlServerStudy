--************************************************************************************************************************************************
--【修改表名】
exec sp_rename 'tb_a','tb_a2'
exec sp_rename 'tb_a2','tb_a'

--************************************************************************************************************************************************
--【修改表-字段操作】
--添加字段
alter table tb_a
add Field20 int null default('111')	--add column 写法会报错
,Field21 int not null 	--连续添加

--修改字段
alter table tb_a
alter column Field20 int not null

--删除字段
alter table tb_a
drop column Field20,Field21	--连续删除

--************************************************************************************************************************************************
--【修改表-约束操作】
--主键约束
alter table tb_c
add constraint pk_tb_c 
primary key (Field1)

--外键约束
alter table tb_a
add constraint fk_tb_a6 
foreign key (Field6) references tb_b(ID)

--唯一约束
alter table tb_a
add constraint uk_tb_a 
unique (Field14)


--【删除约束】
alter table tb_c
drop constraint pk_tb_c


--【创建约束时忽略之前的数据】
alter table tb_a
with nocheck	
add constraint fk_tb_a454 
foreign key (Field6) references tb_b(ID)


--【禁用约束】只能禁用外键约束或者check约束
alter table tb_a
nocheck	
constraint fk_tb_a454 

--【启用约束】
alter table tb_a
check
constraint fk_tb_a454 

