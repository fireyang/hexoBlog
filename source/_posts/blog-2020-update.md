---
title: Hexo Blog 【2020】
date: 2020-12-16 20:35:04
tags:
---

# Hexo Blog 【2020】

目标：又到了年尾了，折腾下blog。升级下版本，切换部署方式到Github的Actions！

## 升级hexo

```bash
## 手动 ，a全选
yarn upgrade-interactive --latest
# 查看版本，会提示hexo config的错误，简单修复
npx hexo version

```

## 升级主题theme-next

[https://github.com/next-theme/hexo-theme-next](https://github.com/next-theme/hexo-theme-next)
8.0 最新（hexo 5.0 以上）

```bash
yarn add hexo-theme-next
# 复制配置模板
cp node_modules/hexo-theme-next/_config.yml _config.next.yml
```

## 插件安装

```bash
# 配置 _config.next.yml -> pangu:true
yarn add  hexo-pangu
# 配置 _config.next.yml
# localsearch:
#     enable:true
yarn add hexo-generator-searchdb
# hexo 配置
search:
  path: search.xml
    field: post
      content: true
        format: html
```

# 部署方式

之前的部署是由Travis CI 来做，现在迁移到Github的Action。全由github的技术栈来生成。

直接打开看：[deploy.yml](https://github.com/fireyang/hexoBlog/blob/deploy/.github/workflows/deploy.yml)

ACTION_DEPLOY_KEY的生成，直接看：参考（4）


参考

1. [利用 Github Actions 自动部署 Hexo 博客](https://sanonz.github.io/2020/deploy-a-hexo-blog-from-github-actions/)
1. [https://hexo.io/docs/github-pages](https://hexo.io/docs/github-pages)
1. [https://github.com/peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)
1. [https://github.com/peaceiris/actions-gh-pages#️-create-ssh-deploy-key](https://github.com/peaceiris/actions-gh-pages#%EF%B8%8F-create-ssh-deploy-key)
