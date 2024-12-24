---
#文章标题
title: "CS2 卡屏 在游戏与桌面间切换崩溃解决方法启动项-vulkan"

#文章创建日期
date: 2024-02-28 23:45:00

#文章更新日期
updated: 

#文章标签
tags: 
    - Others

#文章分类
categories: 
    - 

#文章关键字
keywords: 

#文章描述stick
description: 
    - 

#文章顶部图片
top_img: "/img/49170889_p0.webp"

#文章缩略图(如果没有设置top_img,文章页顶部将显示缩略图，可设为false/图片地址/留空)
cover: ""

#置顶权重
sticky: 0    

#显示文章评论模块(默认 true)
comments: false

#文章版权模块的文章作者
copyright_author: "MisakaAE"

#文章版权模块的文章作者链接
copyright_author_href: 

#文章版权模块的文章连结链接
copyright_url: 

#文章版权模块的版权声明文字
copyright_info: "本文著作权归作者所有。商业转载请联系作者获得授权，非商业用途请标明出处。"

#配置代码框是否展开(true/false)(默认为设置中 highlight_shrink 的配置)
highlight_shrink: false

#显示侧边栏 (默认 true)
aside: true
---

<!-- 正文部分 -->
# 关于CS2 在游戏过程中 卡屏 在桌面和游戏间疯狂切屏 分辨率一直变化
年前游戏还很正常，游玩过程很顺畅，在年后的更新后便开始这个问题，基本每一把都会触发
十分恼火，在此过程中我使用DDU卸载重装过显卡驱动，重装Windows11，将Windows 11 Workstation Pro降级到Windows 11 Pro重装系统，将内存频率降频，删掉游戏Config，彻底删除游戏重装，删除Steam云重装游戏等等一系列操作始终没有解决。

关于我的配置可以参考：
CPU：AMD R5 7500F 6核12线程
GPU：七彩虹 4060Ti OC DUAL 16G版
内存：阿斯加特女武神 DDR5 6000MHz C32 16G×2（降到5800MHz使用）
主板：华硕B650M Plus 重炮手 无WiFi
系统：Windows 11 Pro（个人版）
当前游戏版本13481434
2024年2月29日

# 解决方案

![img](/img/article_006/PixPin_2024-02-29_00-13-37.png)

在游戏启动项加入以下参数：
直接在自己的启动项后面，按照下面的参数解释修改后面的数字
```no-highlight
-vulkan -threads 12 -tank_WorkerThreadCount 6
```

参数解释：

`-vulkan` 渲染方式改为Vulkan **[不用修改]**

`-threads` 逻辑处理器数（线程）

`-tank_WorkerThreadCount` CPU内核数

按照自己电脑的实际来改后面的数字

实测没有再发生卡屏

{% note red 'fas fa-warning' simple %}
此方法仅适用于跟我类似的情况，其他的问题我是真不知道怎么办
{% endnote %}


# Links
{% btn 'https://www.bilibili.com/video/BV1BC4y1m7tb','参考链接',fas fa-link,outline larger %}