--规则是一个对象，可以绑定很多对象。约束只能在表内。
--规则只能作用一个列，但是可以绑定多个列，在一个规则内不能获取到另一个列。check约束可以同时作用多个列

--创建规则
create rule rl_1
AS
@value >0

--没有修改规则语法

--绑定规则
exec sp_bindrule 'rl_1','tb_c.Field1'	--(规则名称,规则要绑定的对象，futureonly_flag(该参数默认关闭，值为True或1时，那么绑定规则只应用于用户自定义数据类型绑定的新列))

--解绑规则
exec sp_unbindrule 'tb_c.Field1'	--参数@objname：绑定对象

--删除规则
drop rule rl_1	--可以用逗号连续删除



--用于显示存储过程依赖的对象（规则、默认值、存储过程）
exec sp_depends sp_test


sp_help 'sp_bindrule' 
sp_help 'sp_unbindrule'


