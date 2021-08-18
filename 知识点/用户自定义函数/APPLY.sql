--APPLY表运算符把右表表达式应用到左表表达式中的每一行。它不像JOIN那样先计算那个表表达式都可以，APPLY必选先逻辑地计算左表达式。这种计算输入的逻辑顺序允许吧右表达式关联到左表表达式。
--使用apply就像是先计算左输入，让后为左输入中的每一行计算一次右输入。
--APPLY有两种形式，一个是OUTER APPLY，一个是CROSS APPLY，区别在于指定OUTER，意味着结果集中将包含使右表表达式为空的左表表达式中的行，而指定CROSS，则相反，结果集中不包含使右表表达式为空的左表表达式中的行。


--例1
SELECT * FROM Student
CROSS APPLY (select '1' as a,2 as b,null as c) as a

SELECT * FROM Student
OUTER APPLY (select '1' as a,2 as b,null as c) as a


--例2
SELECT * FROM Student
CROSS APPLY (select null as a) as a

SELECT * FROM Student
OUTER APPLY (select null as a) as a


--例3
SELECT * FROM Student
CROSS APPLY Class 
WHERE Student.ClassID=Class.ID


SELECT * FROM Student
OUTER APPLY Class 
--WHERE Student.ClassID=Class.ID


