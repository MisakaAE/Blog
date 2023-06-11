---
#文章标题
title: "PotPlayer设置参数优化，K-Lite Codec Pack安装，madVR设置"

#文章创建日期
date: 2023-06-11 10:50:00

#文章更新日期
updated: 2023-06-11 10:50:00

#文章标签
tags: 
    - 教程

#文章分类
categories: 
    - 教程

#文章关键字
keywords: 

#文章描述stick
description: 
    - 

#文章顶部图片
top_img: "/img/49170889_p0.webp"

#文章缩略图(如果没有设置top_img,文章页顶部将显示缩略图，可设为false/图片地址/留空)
cover: "/img/Article_002/PotPlayer.webp"

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
由于暑假要换电脑，这边调了下potplayer,暑假想重新调找教程很麻烦，这部就记录一下。
# 需要的软件
1.PotPlayer 播放器
2.K-Lite Codec Pack 编解码器
3.SVP(有补帧需求可以下，20美刀永买断制)
{% btn 'https://potplayer.daum.net/?lang=zh_CN',PotPlayer官网,fas fa-link,pink larger %}
{% btn 'https://www.codecguide.com/download_kl.htm',K-Lite Codec Pack,fas fa-link,pink larger %}
{% btn 'https://www.svp-team.com/zh/get/',SVP,fas fa-link,pink larger %}

<!-- 内容Start -->
# 安装程序
1. 安装Potplayer
    在potplayer官网下载`64Bit`版本后，双击程序安装。
    在最后一步记得取消勾选“安装额外的编解码器”。
    ![img](/img/Article_002/Snipaste_2023-06-11_12-17-52.jpg)

2. 安装K-Lite Codec Pack
    官网下载`Mega版`，双击程序安装。
    1. Installation Mode --> Normal

    2. Preferred Video/Audio player 都选Potplayer
        `Amount of components to install` --> everything
        `Player settings` -- Install MPC-HC as a secondary player 建议不选
        其他不动
    
    3. Additional Tasks and Options
        `Additional shortcuts -- MediaInfo send to Menu` -- 取消勾选 不添加右键菜单
        其他不动
    
    4. MPC-HC configuration
        `Video renderer` 视频渲染器: madVR
        其他不动
    
    5. Preferred language(s) for audio and subtitles
        `Primary language` : Chinese 首选语言改为中文
        其他不动
    
    6. Audio configuration
        一个也不动

    7. 点击`Install`安装

# 设置PotPlayer
1. 打开PotPlayer，右击点击`选项`或者直接按<kbd>F5</kbd>
2. `滤镜`
    + 内置图像处理滤镜设置
    + 激活条件 : 不使用
    + 取消勾选`滤镜`内所有的勾
    ![img](/img/Article_002/Snipaste_2023-06-11_12-55-56.jpg)
3. `滤镜`
    `原滤镜/分离器`
    + 原滤镜/分离器管理 -- 滤镜/解码器管理 --> `添加系统滤镜`
    + 按住<kbd>Ctrl</kbd>多选
    + 选择`LAV Audio Decoder`，`LAV Splitter Source`，`LAV Video Decoder`
    + 点击左边的滤镜列表中的滤镜，如`LAV Audio Decoder`音频滤镜，对应右边的音频解码器，将里面所有的选项勾上，剩下的滤镜同理
    + 点`确定`后回到刚刚的界面，将里面所有的格式 设置为 `*LAV Splitter Source`，没有的选项就用默认设置

    ![img](/img/Article_002/Snipaste_2023-06-11_12-58-34.jpg)

    ![img](/img/Article_002/Snipaste_2023-06-11_13-07-47.jpg)

    ![img](/img/Article_002/Snipaste_2023-06-11_13-13-03.jpg)

    `视频解码器` & `音频解码器`
    + 同`原滤镜/分离器`，将里面所有的格式 设置为 `*LAV Video Decoder` `*LAV Audio Decoder`

    + PS: 鼠标移到下拉菜单 滚轮滚到最后即可，因为它在最后一个选项

4. `视频`
    `视频渲染器` : Madshi视频渲染
    ![img](/img/Article_002/Snipaste_2023-06-11_13-27-48.jpg)

5. 应用设置后关闭PotPlayer再打开
    打开一个资源，按Tab键
    注意以下选项是否与下面相同：
    `视频解码器`: LAV Video Decoder
    `视频渲染器`: Madshi Video Renderer
    `设备`: 显卡名称
    `音频解码器`: LAV Audio Decoder
    ![img](/img/Article_002/Snipaste_2023-06-11_13-31-23.jpg)
    
# madVR设置
+ 右键 --> 滤镜 --> madshiVR Video Renderer --> Edit Settings
    ![img](/img/Article_002/Snipaste_2023-06-11_13-49-02.jpg)

+ 必要设置：
1. Processing
    + 去色带
    ![img](/img/Article_002/Snipaste_2023-06-11_13-52-48.jpg)

2. Scaling algorithms
    + Chroma upscaling 色度拉升
    ![img](/img/Article_002/Snipaste_2023-06-11_14-13-16.jpg)

    + image downscaling 缩小算法
    ![img](/img/Article_002/Snipaste_2023-06-11_14-14-25.jpg)

    + image upscaling 放大算法
    ![img](/img/Article_002/Snipaste_2023-06-11_14-15-47.jpg)

    + 测试RTX2060无卡顿，Dropped fram es 无增加，等待暑假4070用更高的参数测试
