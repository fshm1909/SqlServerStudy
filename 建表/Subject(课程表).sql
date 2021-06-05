--创建【课程表】
--如果表存在则删除
if OBJECT_ID(N'Subject',N'U') is not null DROP TABLE Subject
--创建表
CREATE TABLE Subject
(
	ID int IDENTITY(1,1) NOT NULL,
	SubjectName NVARCHAR(100) NULL,
	CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED ([ID] ASC)
)

--插入数据
INSERT INTO Subject(SubjectName) VALUES
('语文'),
('数学'),
('英语'),
('体育'),
('科学'),
('常识'),
('化学'),
('物理'),
('生物'),
('音乐'),
('美术'),
('政治'),
('历史'),
('地理'),
('政治'),
('计算机')