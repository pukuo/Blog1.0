#!/bin/bash

# 进入Hugo博客目录
cd ~/Hugo/Sites/guolisen.eu.org

# 生成静态文件
hugo

# 进入public目录
cd public

# 初始化git仓库
git init

# 添加所有文件到git暂存区
git add .

# 提交文件到本地仓库
git commit -m "Deploying to GitHub Pages"

# 添加远程仓库地址
# git remote add origin git@github.com:pukuo/pukuo.github.io.git

# 推送文件到远程仓库的gh-pages分支
git push

# 清理Hugo生成的静态文件
rm -rf public

echo "Deployed successfully!"

