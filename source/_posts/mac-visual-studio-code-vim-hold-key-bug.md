---
title: VScode 在mac下vim的长按问题
date: 2018-01-16 13:19:14
tags: vim, mac
published: true
---
# 问题
mac下的VScode vim 插件, 常按hjkl键无法持续移动光标
# 解决
终端下执行命令：
```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```
复原:
```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool true
```

