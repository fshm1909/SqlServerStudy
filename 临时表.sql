--临时表
--本地临时表（本地临时表仅在当前会话中可见）
SELECT * INTO #Student FROM  Student
--全局临时表（全局临时表在所有会话中都可见）
SELECT * INTO ##Student FROM  Student

SELECT * FROM #Student
SELECT * FROM ##Student

--DROP TABLE #Student
--DROP TABLE ##Student