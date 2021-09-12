--默认值语法和规则语法有点类似


--创建默认值
create default df_1
as 0

--绑定默认值
exec sp_bindefault df_1,'tb_a.Field9' --绑定的列不能有默认值约束

--解绑默认值
exec sp_unbindefault 'tb_a.Field9' 

--删除默认值
drop default df_1



--用于显示存储过程依赖的对象（规则、默认值、存储过程）
exec sp_depends sp_test


sp_help 'sp_bindefault' 
sp_help 'sp_unbindefault'

