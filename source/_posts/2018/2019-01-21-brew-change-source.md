---
title: 更换brew源
date: 2019-01-21 14:54:34
categories:
- brew
tags:
- brew
keywords: brew
published: true
---

# 更换brew国内镜像
```
cd "$(brew --repo)"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

brew update
```

