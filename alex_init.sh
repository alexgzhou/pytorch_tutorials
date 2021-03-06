#!/bin/bash

# *.ipynb, *.py 文件在项目中已经存在, 不需要生成;
# `$ make docs` or `$ make html-noplot` 是生成 html 文档的过程, 不需要执行
# alex_tools.sh 可以分离出 *.ipynb, *.py 文件到单独的路径下, 方便调试代码 (需要先 `$ chmod 755 alex_tools.sh && apt install cpio -y`, 再 `$ ./alex_tools.sh cpp` or `$ ./alex_tools.sh cpi`)

# 设置原始仓库为 remote.official (upstream 仓库)
git remote add official https://github.com/pytorch/tutorials.git
# git config -l | findstr official
# 查看所有远程仓库
git remote -v

# 以本地仓库的 master 分支为源, 新建一个 alex 分支
# git checkout -b alex

# 更新 remote.official 到本地仓库的 master 分支
# git checkout master
git fetch official
# # git merge official/master
# git reset --hard official/master
# 查看所有分支
# git branch -a

# 合并 remote.official 更新到本地 alex 分支
git checkout alex
git merge official/master