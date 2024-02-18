---
title: Hugo博客添加giscus评论系统
subtitle:
date: 2024-01-28T22:14:16+08:00
slug: d3e4a55
draft: false
author:
  name:
  link:
  email:
  avatar:
description:
keywords:
license:
comment: true
weight: 0
tags:
  - hugo
categories:
  - hugo
hiddenFromHomePage: false
hiddenFromSearch: false
hiddenFromRss: false
hiddenFromRelated: false
summary:
resources:
  - name: featured-image
    src: featured-image.jpg
  - name: featured-image-preview
    src: featured-image-preview.jpg
toc: true
math: false
lightgallery: false
password:
message:
repost:
  enable: true
  url:

# See details front matter: https://fixit.lruihao.cn/documentation/content-management/introduction/#front-matter
---

<!--more-->
# 1 为GitHub仓库引入giscus

## 1.1在GitHub上面新建一个仓库，并开启GitHub Discussions

## 1.2 打开之前选择的仓库，进入设置界面，勾选上 Discussions 以开启该仓库的 Discussions

## 1.2 为该仓库安装giscus，安装[giscus](https://github.com/apps/giscus)

## 1.3 从giscus官网获取配置信息，giscus[官网](https://giscus.app/zh-CN)

# 2 在本地博客中配置giscus信息

## 2.1 打开配置文件config.toml，找到# 评论系统设置的第一个enable参量，将其改为 true，

## 2.2 找到giscus comment评论系统设置,并把其配置按照下面代码块修改

```TOML
[params.page.comment.giscus]   
  # 你可以参考官方文档来使用下列配置   
  enable = true   
  repo = "<your_repo>"   
  repoId = "<your_repoId>"   
  category = "<your_category>"   
  categoryId = "<your_categoryId>"   
  # <your_repo> 对应官网的 data-repo   
  # <your_repoId> 对应官网的 data-repo-id   
  # <your_category> 对应官网的 data-category   
  # <your_categoryId> 对应官网的 data-category-id

  # 为空时自动适配当前主题 i18n 配置   
  lang = "zh-CN"   
  mapping = "<your_mapping>"   
  # <your_mapping> 对应官网的 data-mapping   
  reactionsEnabled = "1"   
  emitMetadata = "0"   
  inputPosition = "bottom"   
  lazyLoading = false   
  lightTheme = "light"   
  darkTheme = "dark_dimmed"
```
> 注意如果本地预览评论系统不起作用，需要开启`prod 环境`，默认`dev`环境部分插件是没有启动的
> hugo serve -e production

# 3 参考文章
[知乎 -Hugo如何添加评论系统？](https://www.zhihu.com/question/611725322)
[指月小筑(探索云原生)](https://www.lixueduan.com/posts/blog/02-add-giscus-comment/#5-%E9%85%8D%E7%BD%AE%E5%88%B0%E5%8D%9A%E5%AE%A2)





