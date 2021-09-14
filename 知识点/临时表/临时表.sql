--临时表
--临时表分为两种：本地和全局临时表。本地临时表仅在当前会话中可见；全局临时表在所有会话中都可见。
--本地临时表的名称前面有一个编号符 #table_name，而全局临时表的名称前面有两个编号符 ##table_name。


--本地临时表（本地临时表仅在当前会话中可见）
SELECT * INTO #Student FROM  Student

--全局临时表（全局临时表在所有会话中都可见，全局的并不是永久的，没有引用也会自动删除）
--全局临时表在创建此表的会话结束且其它任务停止对其引用时自动除去。任务与表之间的关联只在单个 Transact-SQL 语句的生存周期内保持。换言之，当创建全局临时表的会话结束时，最后一条引用此表的 Transact-SQL 语句完成后，将自动除去此表。 
SELECT * INTO ##Student FROM  Student


--【删除临时表】
DROP TABLE #Student
DROP TABLE ##Student

--【查询临时表】
SELECT * FROM #Student
SELECT * FROM ##Student
