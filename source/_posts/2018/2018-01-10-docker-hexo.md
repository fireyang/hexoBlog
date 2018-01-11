---
title: docker化的hexo
date: 2018-01-10 14:33:30
categories:
- hexo
tags:
- hexo
- blog
- docker
keywords: hexo, blog, docker
published: true
---

# dockerfile

配置一个自己的dockerfile，并提交到docker
hub上，这样以后在不同机器上，只要支持docker就可以写blog了

github: https://github.com/fireyang/hexo-docker
docker hub: https://hub.docker.com/r/fireyang/hexo/

## 完成的改造：
. 换主题: next http://theme-next.iissnan.com/
. 支持部署到github
. 支持Travis自动部署了，参考：
    . [Auto Deploy Hexo.io to Github Pages With Travis CI](http://kflu.github.io/2017/01/03/2017-01-03-hexo-travis/)
    . [使用 Travis 自动部署 Hexo 到 Github 与 自己的服务器](https://segmentfault.com/a/1190000009054888)

# 后续工作:
. 运行在vps上，根据github的hook自动部署

# 其他：
听说用Travis更省力，这样就可以不需要vps上做什么东西了！那就用docker来做本地的预览吧


