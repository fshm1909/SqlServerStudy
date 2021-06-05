--创建【班级表】
--如果表存在则删除
if OBJECT_ID(N'Class',N'U') is not null DROP TABLE Class
--创建表
CREATE TABLE Class
(
	ID int IDENTITY(1,1) NOT NULL,
	ClassName NVARCHAR(100) NULL,
	CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED ([ID] ASC)
)

--插入数据
INSERT INTO Class(ClassName) VALUES
('一年（1）班'),
('一年（2）班'),
('一年（3）班'),
('一年（4）班'),
('一年（5）班'),
('二年（1）班'),
('二年（2）班'),
('二年（3）班'),
('二年（4）班'),
('二年（5）班'),
('三年（1）班'),
('三年（2）班'),
('三年（3）班'),
('三年（4）班'),
('三年（5）班'),
('四年（1）班'),
('四年（2）班'),
('四年（3）班'),
('四年（4）班'),
('四年（5）班'),
('五年（1）班'),
('五年（2）班'),
('五年（3）班'),
('五年（4）班'),
('五年（5）班'),
('六年（1）班'),
('六年（2）班'),
('六年（3）班'),
('六年（4）班'),
('六年（5）班'),
('初一（1）班'),
('初一（2）班'),
('初一（3）班'),
('初一（4）班'),
('初一（5）班'),
('初二（1）班'),
('初二（2）班'),
('初二（3）班'),
('初二（4）班'),
('初二（5）班'),
('初三（1）班'),
('初三（2）班'),
('初三（3）班'),
('初三（4）班'),
('初三（5）班'),
('高一（1）班'),
('高一（2）班'),
('高一（3）班'),
('高一（4）班'),
('高一（5）班'),
('高二（1）班'),
('高二（2）班'),
('高二（3）班'),
('高二（4）班'),
('高二（5）班'),
('高三（1）班'),
('高三（2）班'),
('高三（3）班'),
('高三（4）班'),
('高三（5）班')