---
title: Hugo添加自定义域名，开启SSL证书
subtitle:
date: 2024-02-07T22:09:40+08:00
slug: 11adc1f
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
  - Hugo
categories:
  - Hugo
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
# Hugo博客添加自定义域名，以GitHub pages+Cloudflare为例

## 首先把域名托管到Cloudflare，添加CNAME记录，value值是你的GitHub博客地址（eg.xxxx.github.io）

## 在GitHub中绑定自定义域名，在GitHub中点击自己的头像，`Settings`，`Pages`，找到`Add a domain`,把刚刚托管到Cloudflare中的域名填写进去，这时它会让你添加一条`TXT`记录，根据提示把记录添加到Cloudflare中即可，然后点击验证，通过即可

## 进入GitHub你存放博客的仓库（xxxx.github.io）,点击右上角的`Settings`，找到`Pages`
，往下划，找到`Custom domain`,把你刚才添加的域名，添加到框中，这时可能会提示DNS解析失败，这时需要我们再在我们的域名托管商中，添加一条A记录，value值填写下面四个IP地址（任选其一即可）
```
185.199.111.153
185.199.110.153
185.199.109.153
185.199.108.153
```
## 到这儿，我们就可以通过域名访问到我们的网站了，不过这时候，我们还需要开启`Enforce Https`增加我们网站的安全性

> 可能会出现`unavailable for your site because your domain is not properly configured to support https`的提示

## 解决办法

- 1.删除自定义域
- 2.等待几分钟，刷新页面，然后重新添加自定义域
- 3.再等几分钟，再刷新几次，您应该会看到有关正在预配证书的消息
- 4.再等一次，最终HTTPS复选框将再次被选中
- 5.5-10m 后，DNS 更改应该会传播，您的站点将再次备份

## 注意：如果要为自定义域（而不是子域）执行此操作，则还需要：

> 禁用所有A记录的代理，这时，你会发现Enforce Https后面的提示变成了`Not yet available for your site because the certificate has not finished being issued`，等待几分钟，或者重复上面的步骤，到这里基本上就完成了

> 提示：我这里还遇到了一个问题，就是我开启这个Enforce Https后，DNS解析又出现问题了，我的解决办法是，重新开启A记录的代理





