---
#文章标题
title: "常用到的应用备份及官网"

#文章创建日期
date: 2023-06-11 18:30:00

#文章更新日期
updated: 2023-06-11 18:30:00

#文章标签
tags: 
    - 资源

#文章分类
categories: 
    - 资源

#文章关键字
keywords: 

#文章描述stick
description: 
    - 收录我常用到的软件，还有些冷门的小工具。

#文章顶部图片
top_img: "/img/49170889_p0.webp"

#文章缩略图(如果没有设置top_img,文章页顶部将显示缩略图，可设为false/图片地址/留空)
cover: "/img/Article_003/APP.webp"

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
# 开篇
+ 这里记录了我日常会用的App及事项。
<!-- 内容Start -->
# 工具
1. ADB
    平时折腾我的备用机红米K20Pro大魔王的时候会用到
+ [Google官方教程](https://developer.android.google.cn/studio/command-line/adb?hl=zh-cn#move)

2. CheatEngine
    内存修改器，玩单机的时候有用
    下滑有中文翻译文件，下载后解压得到`zh_CN`文件夹，拖入安装目录`Cheat Engine 7.5\languages`
    修改`Language.ini`中的
    ```ini
    PreferedLanguage=zh_CN
    ```
    {% btn 'https://cheatengine.org/downloads.php','官网',fas fa-link,pink outline larger %}

3. Clash for windows
    在大陆使用魔法的工具，可以玩脚本啥的，花样很多。
    汉化文件替换安装目录`Clash for Windows\resources\app.asar`
    {% btn 'https://github.com/topics/clash-for-windows','官方GitHub',fas fa-link,pink outline larger %}
    {% btn 'https://github.com/BoyceLig/Clash_Chinese_Patch','汉化 GitHub',fas fa-link,pink outline larger %}

4. BettterNCM
    网抑云插件管理器，增强网抑云UI和功能
    以下是我安的插件
    ![img](/img/Article_003/Snipaste_2023-06-11_18-38-32.jpg)
    {% btn 'https://github.com/MicroCBer/BetterNCM','官方GitHub',fas fa-link,pink outline larger %}

5. CRU
    自定义屏幕分辨率刷新率等设置
    红绿蓝三家厂通用（似乎绿厂并不需要？）
    AMD Radeon Software笔记本端不能自定义所以得要这个
    当时CSGO不能自定义1440*1080找了好久才找到
+ 设置方法：
    点击Add
    Timing: Automatic PE
    Horizontal和Vertical:像素长宽
    Refresh rete: 帧数
    设置完了双击`restaer64.exe`
    {% note warning flat %}
    最好不要超频
    {% endnote %}
    ![img](/img/Article_003/Snipaste_2023-06-11_19-02-09.jpg)
    {% btn 'https://customresolutionutility.com/','官网',fas fa-link,pink outline larger %}

6. MP3tag
    修改音乐文件的参数
    
    {% btn 'https://www.mp3tag.de/index.html','官网',fas fa-link,pink outline larger %}

7. Office部署工具
    配置好需要的东西就可以一键安装Office了，装机必备
    {% btn 'https://otp.landian.vip/zh-cn/','官网',fas fa-link,pink outline larger %}

8. Procmon
    进程监视器，记录每个程序的操作，用来除流氓文件有妙用

    {% btn 'https://learn.microsoft.com/en-us/sysinternals/downloads/procmon','微软官方',fas fa-link,pink outline larger %}

9. Snipaste
    很好用的截图工具
    不用买专业版功能也完全够用
    专业版价格也不算太贵 $19.99/¥99
    {% btn 'https://zh.snipaste.com/','官网',fas fa-link,pink outline larger %}

10. 图吧工具箱
    电脑好用的工具箱，装机必备
    {% btn 'http://www.tbtool.cn/','官网',fas fa-link,pink outline larger %}

11. PKG解包程序
    解包WallpaperEngine壁纸的PKG解包工具
    使用方法：将`解包程序`放入`壁纸PKG文件`同目录双击运行`解包程序`
    {% btn 'https://alphaerror.lanzoum.com/iAr170ywghyj','蓝奏云',fas fa-link,pink outline larger %}

12. 电棍活字印刷
    将文本转为电棍otto的语音，可以部署到网站上
    这边还有个GUI版，GitHub搜半天找不到作者，先放网盘里了
    ![img](/img/Article_003/Snipaste_2023-06-11_22-31-35.jpg)
    {% btn 'https://github.com/HanaYabuki/otto-hzys','GitHub',fas fa-link,pink outline larger %}
    {% btn 'https://alphaerror.lanzoum.com/iEU3G0ywh6je','蓝奏云',fas fa-link,pink outline larger %}
    
13. 解锁音乐加密
    破解网易云QQ音乐下载下来的VIP的加密音乐，GitHub虽然挂了，但已经被Fork一万遍了，通过别人Fork过去的信息找到官方TG，再找到了作者的网站。
    需要自行构建，准备好NodeJS
    ![img](/img/Article_003/Snipaste_2023-06-11_22-32-38.jpg)
    {% btn 'https://git.unlock-music.dev/um/web','官网源码',fas fa-link,pink outline larger %}

14. Uninstall Tool
    好用的应用卸载工具，卸载能检测残留文件，连注册表都给你扬了
    官方现在的是收费的，这是破解过的便携版
    {% btn 'https://alphaerror.lanzoum.com/iC1zGm2bjmb','蓝奏云',fas fa-link,pink outline larger %}

15. RealESR_Tools
    AI图片放大工具，里面自带的模型挺多的，也可以自己加模型，半控制台，这UI一言难尽，有总比没有好。
    ![img](/img/Article_003/Snipaste_2023-06-11_22-33-34.jpg)
    {% btn 'https://github.com/Tptr-lateworker/RealESR_Tools','GitHub',fas fa-link,pink outline larger %}

16. stable-diffusion-webui
    NovelAI，之前写过教程，跟着我的文章操作就行了
    {% btn 'https://blog.misakaae.cn/2023/05/22/article_001/','我的博客',fas fa-link,pink outline larger %}
    ![img](/img/Article_003/Snipaste_2023-06-11_20-01-23.jpg)

# 游戏相关
1. Teamspeak3
    跟朋友开黑都用TS3，服务器直接在淘宝买，5块钱一个月便宜的很
    TS5用着不大习惯，还是TS3界面简单舒适，自带的降噪也很顶
    语言包在安完TS3后双击就可以安装语言包插件了
    ![img](/img/Article_003/Snipaste_2023-06-11_22-34-17.jpg)
    {% btn 'https://teamspeak.com/zh-CN/downloads/','官网',fas fa-link,pink outline larger %}
    {% btn 'https://teamspeak.app/docs/basic/chinese-translate/','汉化包下载',fas fa-link,pink outline larger %}

2. CSGO Demo Manager
    可以读取CSGO的Demo并分析内容
    可以自动检测官方或Faceit的，国内平台也能读
    {% btn 'https://github.com/akiver/CSGO-Demos-Manager/','GitHub',fas fa-link,pink outline larger %}

3. SLAM
    CSGO语音包软件，可以在控制台选择语音
    完美和官匹可以用，5E之前可以用，现在的炸了，但可以用Steam的Soundpad
    ![img](/img/Article_003/Snipaste_2023-06-11_22-51-16.jpg)
    {% btn 'http://slam.flankers.net/','官网',fas fa-link,pink outline larger %}
    {% btn 'https://github.com/SilentSys/SLAM','GitHub',fas fa-link,pink outline larger %}

4. Watt Toolkit (原Steam++)
    可以加速Steam，各大游戏平台，Discord，Pixiv，老鼠台等等
    还可以挂卡，加脚本，强化Steam功能，批量出售Steam库存等，功能强大。
    {% btn 'https://steampp.net/','',fas fa-link,pink outline larger %}

5. UsbEAm Hosts Editor
    多平台hosts修改，加速Steam等游戏平台，服务等，支持的比Watt Toolkit多，但UI简陋些。
    {% btn 'https://www.dogfight360.com/blog/','官网',fas fa-link,pink outline larger %}

6. VAPE
    Minecraft大纪人手一个，用折扣代码 `Merryzz` -15%
    魔法挂香港，可以用支付宝支付，到手两百多块钱，TellyBridge帅的一逼，可以去服务器装逼，咱们主打一个安全黑客。
    Drip 99美刀太寄吧贵了，还是电子烟客户端便宜好用
    ![img](/img/Article_003/Snipaste_2023-06-11_22-44-27.jpg)
    {% btn 'https://www.vape.gg/','',fas fa-link,pink outline larger %}

# BASH常用的脚本
1. 刷新Windows图标缓存
2. 解决蓝奏云DNS污染
3. 修复CSGO VAC错误
4. 我的万能启动工具箱
```BASH
@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
title MENU

:menu
cls
ECHO. [1]游戏模式  [2]关闭所有程序 [3]关闭SLAM [4]重启Explorer [5]刷新图标缓存 [6]网速测试
ECHO.
echo.请输入选择项目的序号：
set ID="q"
set /p ID="> "
if "%id%"=="1" goto cmd1
if "%id%"=="2" goto cmd2
if "%id%"=="3" goto cmd3
if "%id%"=="4" goto cmd4
if "%id%"=="5" goto cmd5
if "%id%"=="6" goto cmd6
if "%id%"=="q" goto end


:end
exit

:cmd1
start /d"D:\APP\steampp\Steam++" Steam++.exe
@echo 启动Steam++
start /d"D:\APP\TencentQQ\QQ_main\Bin" QQScLauncher.exe
@echo 启动QQ
start /d"D:\APP\steam" steam.exe
@echo 启动Steam
goto menu

:cmd2
taskkill -f -im "QQ.exe"
taskkill -f -im "QQGuild.exe"
taskkill -f -im "TXPlatform.exe"
taskkill -f -im "SunloginClient.exe"
taskkill -f -im "SLAM.exe"
taskkill -f -im "Steam++.exe"
taskkill -f -im "cloudmusic.exe"
taskkill -f -im "steam.exe"
taskkill -f -im "steamwebhelper.exe"
taskkill -f -im "ts3client_win64.exe"
taskkill -f -im "HipsMain.exe"
taskkill -f -im "HipsDaemon.exe"
taskkill -f -im "wsctrlsvc.exe"
taskkill -f -im "PopBlock.exe"
taskkill -f -im "HipsTray.exe"
taskkill -f -im "wallpaper32.exe"
taskkill -f -im "java.exe"
taskkill -f -im "Clash for Windows.exe"
taskkill -f -im "msedge.exe"
pause
goto menu

:cmd3
taskkill -f -im SLAM.exe
goto menu

:cmd4
taskkill -f -im explorer.exe
start explorer.exe
pause
goto menu

:cmd5
rem 关闭 Windows 外壳程序 Explorer
taskkill /f /im explorer.exe
rem 清理系统图标缓存数据库
attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"
del /f "%userprofile%\AppData\Local\IconCache.db"
attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"
rem 清理系统托盘记忆的图标
echo y　reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y　reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
rem 重启 Windows 外壳程序 Explorer
start explorer
pause
goto menu

:cmd6
start /d"D:\APP" speedtest.exe
pause
goto menu
```
{% btn 'https://alphaerror.lanzoum.com/i896R0ywo7ng','蓝奏云',fas fa-link,pink outline larger %}


# 普通软件
## 游戏
+ Steam
    最常用的游戏平台
    {% btn 'https://store.steampowered.com/about/','官网',fas fa-link,pink outline larger %}

+ 5E对战平台
    CS对战平台
    {% btn 'https://arena.5eplay.com/download','官网',fas fa-link,pink outline larger %}

+ B5对战平台
    CS对战平台
    {% btn 'https://www.b5csgo.plus/download','官网',fas fa-link,pink outline larger %}

+ 完美世界对战平台
    CS对战平台
    {% btn 'https://pvp.wanmei.com/','官网',fas fa-link,pink outline larger %}

+ Faceit
    CS对战平台
    {% btn 'https://www.faceit.com/zh','官网',fas fa-link,pink outline larger %}

+ WeGame
    疼逊的游戏平台
    {% btn 'https://www.wegame.com.cn/','官网',fas fa-link,pink outline larger %}

+ UU加速器
    加速游戏
    {% btn 'https://uu.163.com/','官网',fas fa-link,pink outline larger %}

+ SakuraFrp
    联机游戏内网穿透
    {% btn 'https://www.natfrp.com/tunnel/download','官网',fas fa-link,pink outline larger %}

+ Epicgames
    我Epic库里的游戏没一个是买的（笑
    这周让我看看是哪个小子被背刺了捏？原来是我啊（悲
    {% btn 'https://www.epicgames.com/site/zh-CN/home','官网',fas fa-link,pink outline larger %}

+ Lunar Client
    Minecraft客户端，FpsBoost，搭配VAPE使用更佳（bsshi
    {% btn 'https://www.lunarclient.com/download/','官网',fas fa-link,pink outline larger %}

+ OSU!
    OSU是手残玩家的最好的伙伴(据说玩多了其他游戏定位会更准？)
    {% btn 'https://osu.ppy.sh/home/download','官网',fas fa-link,pink outline larger %}

## 驱动
+ ibasso drive
    我的iBasso-DC03Pro解码线的驱动
    日常直接用它看番打游戏了，比自带的声卡声音好多了
    {% btn 'https://ibasso.com/dc03pro/','官网',fas fa-link,pink outline larger %}

+ 罗技ghub
    鼠标驱动
    {% btn 'https://www.logitechg.com.cn/zh-cn/innovation/g-hub.html','官网',fas fa-link,pink outline larger %}

## 常用软件&工具
+ 微信
    社交聊天
    {% btn 'https://pc.weixin.qq.com/','官网',fas fa-link,pink outline larger %}

+ 腾讯QQ
    社交聊天
    {% btn 'https://im.qq.com/download','官网',fas fa-link,pink outline larger %}

+ 阿里云盘
    最常用网盘
    {% btn 'https://www.aliyundrive.com/','官网',fas fa-link,pink outline larger %}

+ 阿里旺旺
    淘宝天猫买东西聊天工具
    {% btn 'https://pages.tmall.com/wow/qnww/act/index','官网',fas fa-link,pink outline larger %}

+ 百度网盘
    限速真死妈，但资源都在百度很恼火
    {% btn 'https://yun.baidu.com/download','官网',fas fa-link,pink outline larger %}

+ 贝锐向日葵
    圆孔用
    {% btn 'https://sunlogin.oray.com/download?categ=personal','官网',fas fa-link,pink outline larger %}

+ Discord
    聊天社交，有很多开发者在里面，有些资源要在这里下
    {% btn 'https://discord.com/download','官网',fas fa-link,pink outline larger %}

+ Telegram
    ~~聊天工具~~
    {% btn 'https://desktop.telegram.org/','官网',fas fa-link,pink outline larger %}

+ 火绒
    良心的杀毒软件，没有广告！
    {% btn 'https://huorong.cn/person5.html','官网',fas fa-link,pink outline larger %}

+ Everything
    好用的全局搜索工具，比Win自带的垃圾好用一百万倍
    {% btn 'https://www.voidtools.com/zh-cn/downloads/','官网',fas fa-link,pink outline larger %}

+ Gihosoft TubeGet
    油管视频下载工具
    专业版有点小贵，¥199
    {% btn 'https://www.jihosoft.cn/tubeget/','官网',fas fa-link,pink outline larger %}

+ bandizip
    好用的解压缩工具，没有广告，UI清爽
    {% btn 'https://www.bandisoft.com/bandizip/','官网',fas fa-link,pink outline larger %}


## 影音
+ 网易云
    阴乐软件
    {% btn 'https://music.163.com/#/download','官网',fas fa-link,pink outline larger %}

+ K-lite codec pack
    编解码器
    {% btn 'http://codecguide.com/download_kl.htm','官网',fas fa-link,pink outline larger %}

+ Potplayer
    视频音频播放器，功能强大
    {% btn 'https://potplayer.daum.net/?lang=zh_CN','官网',fas fa-link,pink outline larger %}


## 生产工具
+ VisualStudioCode
    最强编辑器，插件往死里加
    {% btn 'https://code.visualstudio.com/Download','官网',fas fa-link,pink outline larger %}

+ VisualStudio
    搞C++，dotnet之类的项目很方便
    {% btn 'https://visualstudio.microsoft.com/zh-hans/downloads/','官网',fas fa-link,pink outline larger %}

+ git
    必备开发工具
    {% btn 'https://git-scm.com/','官网',fas fa-link,pink outline larger %}

+ Java 8/11/7
    玩Minecraft或开发Java程序用
    {% btn 'https://www.java.com/en/download/manual.jsp','Java8',fas fa-link,pink outline larger %}
    {% btn 'https://www.oracle.com/cn/java/technologies/javase/jdk11-archive-downloads.html','Java11',fas fa-link,pink outline larger %}
    {% btn 'https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html','Java17',fas fa-link,pink outline larger %}

+ Python 3.9/10/11
    好用的语言
    {% btn 'https://www.python.org/downloads/windows/','官网',fas fa-link,pink outline larger %}

+ NodeJS
    用着还行的环境，不太喜欢JavaScript的语法
    {% btn 'https://nodejs.org/zh-cn','官网',fas fa-link,pink outline larger %}

+ Adobe全家桶
    微博@Vposy，微信公众号Vposy软件

+ 哔哩哔哩直播姬
    在睿站直播用的软件
    {% btn 'https://live.bilibili.com/liveHime/','官网',fas fa-link,pink outline larger %}

+ OBS Studio
    好用的录制/推流工具
    {% btn 'https://obsproject.com/','官网',fas fa-link,pink outline larger %}

+ Iriun webcam
    手机摄像头变电脑摄像头
    {% btn 'Iriun webcam','官网',fas fa-link,pink outline larger %}

+ 立创eda
    嘉立创官方的PCB绘制工具
    {% btn 'https://lceda.cn/page/download?src=index','官网',fas fa-link,pink outline larger %}

- [x] 等待添加更多
