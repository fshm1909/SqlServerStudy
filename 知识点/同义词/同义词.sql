--同义词：实际就是当前数据库对象指向另外一个数据库对象的别名。一般使用于跨数据库操作的场景。
--支持创建同义词的数据库对象：数据表，视图，储存过程，同义词（测试引用同义词报错）等。

--【创建同义词】
create synonym sy_Class
for test.dbo.Class	--引用的对象名称写完整，不写dbo使用同义词的时候会报错

--嵌套同义词（报错了，不允许使用同义词链接）
create synonym sy_Class2
for test.dbo.sy_Class

--【删除同义词】
drop synonym sy_Class
drop synonym sy_Class2



--【使用同义词】
select * from sy_Class
select * from sy_Class2
