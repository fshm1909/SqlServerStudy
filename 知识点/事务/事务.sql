

Begin Transaction	--标记事务开始。（Transaction可简写成Tran）

Commit Transaction	--事务已经成功执行，数据已经处理妥当。
--Rollback Transaction	--数据处理过程中出错，回滚到没有处理之前的数据状态，或回滚到事务内部的保存点。
--Save Transaction	--事务内部设置的保存点，就是事务可以不全部回滚，只回滚到这里，保证事务内部不出错的前提下。

