--微软文档：https://docs.microsoft.com/zh-cn/sql/relational-databases/indexes/indexes?view=sql-server-ver15


--************************************************************************************************************************************************
--创建索引
CREATE
--UNIQUE --用于指定为表或视图创建唯一索引，即不允许存在索引值相同的两行。（有点类似唯一约束，但是有区别）
--CLUSTERED --聚集索引
--NONCLUSTERED	--非聚集索引
INDEX index_Student_001 --索引名称
ON Student --索引对象（表、视图）
(
	--索引键 列(ASC/DESC:升序/降序)，可以多个
	ID ASC
	,Name DESC
)
--INCLUDE (Sex,Age)	--包含性 列,可以多个
--WHERE	--用于设置在索引中包含哪些行的条件



--************************************************************************************************************************************************
--删除索引
DROP INDEX Student.index_Student_001,Student.index_Student_002 --删除多个，索引名称用逗号隔开


