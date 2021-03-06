:: 设置原始仓库为 remote.official (upstream 仓库)
git remote add official https://github.com/pytorch/tutorials.git
REM git config -l | findstr official
:: 查看所有远程仓库
git remote -v

:: 以本地仓库的 master 分支为源, 新建一个 alex 分支
REM git checkout -b alex

:: 更新 remote.official 到本地仓库的 master 分支
REM git checkout master
git fetch official
REM REM git merge official/master
REM git reset --hard official/master
:: 查看所有分支
REM git branch -a

:: 合并 remote.official 更新到本地 alex 分支
git checkout alex
git merge official/master

