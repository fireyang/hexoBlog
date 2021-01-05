---
title: Mac下用Latex写简历
date: 2019-04-11 14:23:39
tags: latex
publicshed: true
---

<!-- # Mac下用Latex写简历 -->

Mac推荐安装的是Mactex，通过brew search latex可以找到三种:
* mactex: 完整安装，包括编辑器和完整的库，安装完需要6G+
* mactex-no-gui: 同上，只是没有gui的编辑器
* basictex: 基础包, 100M以内；没有对应的依赖库

如果为了省心，推荐第一种；为了省空间推荐最后一种。
1. 安装brew
```
# 安装brew
# https://brew.sh/index_zh-cn.html
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 安装brew cask
brew tap caskroom/cask
```
 切换brew国内镜像：参考1

1. 安装mactex
```
# 两种方式选择一种
# 1,安装mactex
brew cask install mactex
# 2,最简单安装
brew cask install basictex
```
1. 依赖包安装:
```
# sudo tlmgr install package-name
# 如下示例
sudo tlmgr install latexmk
sudo tlmgr install multirow
```
 切换tlmgr镜像源: 参考2

1. 简历模版：
[https://github.com/JasonZhang2333/MyResume](https://github.com/JasonZhang2333/MyResume)
```
git clone https://github.com/JasonZhang2333/MyResume.git
```

1. 生成简历：
```
# 生成pdf简历
xelatex *.tex
```

## 参考
1. [Homebrew 镜像使用帮助](https://mirror.tuna.tsinghua.edu.cn/help/homebrew/)
1. [[CTAN] 镜像使用帮助](https://mirror.tuna.tsinghua.edu.cn/help/CTAN/)
1. [JasonZhang2333/MyResume](https://github.com/JasonZhang2333/MyResume)
1. [一份其实很短的 LaTeX 入门文档](https://liam.page/2014/09/08/latex-introduction/)
