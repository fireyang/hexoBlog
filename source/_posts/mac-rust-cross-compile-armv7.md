---
title: Mac OS下rust交叉编译armv7
date: 2019-03-20 16:08:25
tags: mac, rust, armv7, cross-compile
published: true
---

# Mac OS下rust交叉编译armv7

参考来源：[Cross compiling Rust on Mac OS for an ARM Linux router](https://sigmaris.info/blog/2019/02/cross-compiling-rust-on-mac-os-for-an-arm-linux-router/)

ps:尝试armv7-unknown-linux-gnueabihf失败

1. 添加target
```
    //查看armv7的target列表
    rustup target list | grep armv7
    //添加target
    rustup target add armv7-unknown-linux-musleabihf
```
1. 安装arm的编译工具
```
    brew install arm-linux-gnueabihf-binutils
```

1. 指定linker
```
//在~/.cargo/config (不存在就新增)添加如下配置
[target.armv7-unknown-linux-gnueabihf]
linker = "arm-linux-gnueabihf-ld"
```
1. 编译
```
cargo build --target=armv7-unknown-linux-musleabihf
```

