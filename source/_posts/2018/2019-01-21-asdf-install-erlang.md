---
title: max下asdf安装erlang
date: 2019-01-21 14:54:34
categories:
- erlang
tags:
- erlang asdf
keywords: erlang asdf
published: true
---

# asdf安装erlang
## 安装asdf

参考地址: https://github.com/asdf-vm/asdf

##  添加erlang支持
```
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
```

## 支持ssl，crypto, wxmac

ps: elixir 1.8的hex，必须支持ssl
```
brew install openssl
brew install wxmac
export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --without-javac
--enable-shared-zlib --enable-dynamic-ssl-lib --enable-hipe --enable-sctp --enable-smp-support
--enable-threads --enable-kernel-poll --enable-wx --enable-darwin-64bit
--with-ssl=/usr/local/Cellar/openssl/1.0.2p"
asdf install erlang 21.2.3
```
注意:with-ssl对应的版本路径

