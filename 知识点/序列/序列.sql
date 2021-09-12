--序列像表中的标识列（identity）
--规则类似表的check约束，默认值类似表的默认值约束，序列类似表的identity


--创建序列
create sequence sequence_name2
AS INT	--序列类型
START WITH	1	--起始值
INCREMENT BY 1	--增量。如果为负数则递减，否则递增。不能为0
MINVALUE 1	--最小值
MAXVALUE 99999	--最大值
CYCLE	--是否循环：此属性指定当超过序列对象的最小值或最大值时，序列对象是应从最小值（对于降序序列对象，则为最大值）重新开始，还是应引发异常。 新序列对象的默认循环选项是 NO CYCLE。
NO CACHE	--缓存：通过最大限度地减少生成序列编号所需的磁盘 IO 数，可以提高使用序列对象的应用程序的性能。设置缓存后，在第一获取序列后，在服务器的缓存中缓存当前序号和设置的缓存值(缓存个数*增量)。这样以后再次请求时，除非要获取的序号大于缓存值，才将缓存值更新到磁盘中的系统表。


--重新设置当前序列值
alter sequence sequence_name 
restart with 100

--使用序列
DECLARE @a INT
SELECT @a=NEXT VALUE FOR sequence_name --取出序列的下一个值
SELECT @a

GO

--取出序列的下一个值
SELECT NEXT VALUE FOR sequence_name 

--直接获取序列当前值
SELECT current_value,* FROM sys.sequences
WHERE name='sequence_name'

--按照字段排序使用序列
select * 
,next value for sequence_name over(order by ID asc) as xx
from student