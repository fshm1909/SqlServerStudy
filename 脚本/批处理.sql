--批处理是指从应用程序一次性地发送一组完整sql语句到sql server上执行
--批处理的所有语句被当做一个整体,被成批地分析,编译和执行
--所有的批处理 指令以GO 作为结束标志

--GO的特点:
--1：GO 语句必须自成一行（只有注释可以在同一行）
GO SELECT * FROM CLASS
SELECT * FROM CLASS where id=1;GO 

--2：每个批处理单独发送到服务器(所以一个批处理的错误不会影响到另一个)
SELECT name FROM CLASS --错误代码
 GO
 SELECT * FROM CLASS where id=1;
 GO 

--3：GO 语句不是T-SQL命令（有些编译器可能不识别GO语句）


--批处理中的错误：
--1：语法错误
--2：运行时错误

