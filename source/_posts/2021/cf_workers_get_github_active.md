---
title: cf worker + teletram 打造一个github news
date: 2021-06-30 22:35:04
tags:
---
cf worker + teletram 打造一个github news
===

## 起因
发现一个好玩具：https://workers.cloudflare.com/  
cloudflare workers可以理解为一个免费的mini web server，详情请看官网。  

免费撸一个工具，结合telegram的机器人。  
将github首页的All activity动态，通过tg发送给我，这样就能时刻关注大佬们的动态，第一时间知道他们又star了什么好玩的，fork了什么牛逼的仓库了！  

重要的一点：免费计划配额还不少，还支持cron定时任务，完美！  
![](https://i.imgur.com/ODAAKoG.png =500x)

## 过程

1. cf的telegram支持  
参考：[Cloudflare Workers](https://moe.best/tutorial/cfworker-telegraf-tgbot.html)  
 作者详细解释了原理，演示了如何安装和使用，通过该文章很快的实现了cf+telegram发消息的功能
2. 解析github的feed rss源。  
虽然rss的内容是xml的；我不想引入太重的xml解析库，于是我简单的通过正则提炼自己想要的信息，然后通过telegraf找到自己的telegram chat id，直接给我发消息就可以了
3. 定时任务  
使用workers的cron功能，定时抓取github rss数，再通过telegram机器人发送消息
![](https://i.imgur.com/GeJEP7J.png =500x)


## 最终成果

![](https://i.imgur.com/WssXWSt.png =500x)

## 其他参考
* [cf workers帮助文档](https://developers.cloudflare.com/workers/)  
* https://github.com/lukeed/awesome-cloudflare-workers