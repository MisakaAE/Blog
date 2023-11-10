---
#文章标题
title: "table-diffusion WebUI 部署教程 问题解决"

#文章创建日期
date: 2023-05-22 10:40:20

#文章更新日期
updated: 2023-6-10 10:00:00

#文章标签
tags: 
    - 教程
    - AI

#文章分类
categories: 
    - 教程

#文章关键字
keywords: 

#文章描述stick
description: 
    - NovelAI部署教程，WebUI，汉化，table-diffusion

#文章顶部图片
top_img: "/img/Article_001/NovelAILOGO.webp"

#文章缩略图(如果没有设置top_img,文章页顶部将显示缩略图，可设为false/图片地址/留空)
cover: "/img/Article_001/NovelAILOGO.webp"

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
由于我记忆力较差，所以写一篇Blog来做个记录，遇到的坑和解决方案
等暑假换电脑再部署有个参考，懒得再去找解决方案了

此方案适用于Windows系统且有Nvidia显卡
我的系统：Windows11 工作站专业版
我的显卡：RTX2060 6GB
显卡真的非常不够用，等暑假打工立马换3080或者2080Ti改24G显存！

{% note red 'fas fa-warning' simple %}
如果你在中国大陆，则需要准备魔法上网。如果你在国外或在国外服务器部署请忽略此告示。
{% endnote %}


# 需要准备的工具
## Python 3.10.7 
(其他版本会出现一些奇奇怪怪的Bug，所以只能用这个版本)

Windows 下载 Windows Installer 64 Bit (应该没人用32位电脑跑这个吧)

{% btn 'https://www.python.org/downloads/release/python-3107/',Python 3.10.7,fas fa-link,pink larger %}
![sc01](/img/Article_001/Snipaste_2023-05-22_11-10-48.jpg)

{% note orange 'fas fa-warning' simple %}
安装Python时需勾选 "Add Python 3.10.7 to PATH"。
{% endnote %}


![sc02](/img/Article_001/Snipaste_2023-05-22_11-38-38.jpg)

## Git 下载最新版即可 

{% btn 'https://gitforwindows.org/',Git官网,fas fa-link,pink larger %}

## CUDA Tookit 

下载最新版，一般没问题。如果出现问题就下载11.8版本

{% btn 'https://developer.nvidia.com/cuda-downloads',CUAD最新版,fas fa-link,pink larger %}
{% btn 'https://developer.nvidia.com/cuda-11-8-0-download-archive?target_os=Windows&target_arch=x86_64&target_version=11&target_type=exe_local',CUDA 11.8版本,fas fa-link,pink larger %}

# Git的代理配置
* 关于Git在国内Clone GitHub的仓库过慢的问题
    这是因为Git没有配置代理
    解决方法:
    <p>在任意文件夹或桌面 <kbd>Shift</kbd> + <kbd>鼠标右键</kbd> -> 点击Git Bash Here </p>
    在git bash中输入如下指令
```bash
git config --global --edit
```
默认会使用VIM编辑器，如果有安装VSCode会唤出,在编辑完毕保存后，关闭唤出的标签页会自动应用设置

* ![sc03](/img/Article_001/Snipaste_2023-05-22_11-54-39.jpg)

我这里用的是Clash,端口号是7890，所以我这样写：
* ![sc04](/img/Article_001/Snipaste_2023-05-22_11-57-25.jpg)

* Config
```no-highlight
[http]
	proxy = socks5://127.0.0.1:7890
[https]
	proxy = socks5://127.0.0.1:7890
```

# 开始部署
{% note orange 'fas fa-warning' simple %}
下面请在开启魔法的状态下操作
{% endnote %}

1. 克隆仓库
    打开一个文件夹，这里将是你部署NoveAI的文件夹，请预留足够的空间以便部署
    <p>在这个文件夹 <kbd>Shift</kbd> + <kbd>鼠标右键</kbd> -> 点击Git Bash Here </p>
    
    在命令行输入以下内容：

    ```bash
    git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
    ```

2. 配置启动文件 `webui-user.bat`

    ```bash
    @echo off
    set PYTHON=
    set GIT=
    set VENV_DIR=
    set COMMANDLINE_ARGS=

    call webui.bat
    ```

    + `set PYTHON=`
    这里是你的Python3.10.7的路径
    一般在 "C:\Users\你的用户名\AppData\Local\Programs\Python\Python310\python.exe"

    + `set GIT=`
    Git的路径，一般不用配置

    + `set VENV_DIR=`
    虚拟环境文件夹，随便设一个，注意不要包含中文和特殊字符

    + `set COMMANDLINE_ARGS=`
    启动项，后面会说到

    以下是我的配置

    ```bash
    @echo off

    set PYTHON=C:\Users\misak\AppData\Local\Programs\Python\Python310\python.exe
    set GIT=
    set VENV_DIR=virtual_dir
    set COMMANDLINE_ARGS=--medvram --always-batch-cond-uncond --deepdanbooru    --xformers --precision full --no-half --skip-torch-cuda-test --no-gradio-queue

    call webui.bat
    ```


3. 双击启动`webui-user.bat`
    

    + 随后等待自动下载完毕

4. 一些奇怪的问题解决方案
    1. 第一次启动报错
    ![sc05](/img/Article_001/Snipaste_2023-05-22_13-20-49.jpg)

    这是因为无法完成CUDA测试
    第一次启动如果发生如上报错，请在启动项加入以下内容
    ```no-hightlight
    --skip-torch-cuda-test
    ```

    + 注意：直接在 <kbd>=</kbd> 后面加，不需要空格，多个启动项之间有一个空格即可
    示例
    ```no-highlight
    set COMMANDLINE_ARGS=--skip-torch-cuda-test
    ```
    ```no-highlight
    set COMMANDLINE_ARGS=--skip-torch-cuda-test                若发生虚拟环境的库安装失败报错，如`installing open_clip`,`This error originates from a subprocess, and is likely not a problem with pip`,`subprocess-exited-with-error` 等。

        多次重试仍然失败，可以在虚拟环境中使用命令自行解决
        以下是解决方案:

        打开这个目录 `stable-diffusion-webui\你的虚拟文件夹名\Scripts` 
        <p>在这个文件夹 <kbd>Shift</kbd> + <kbd>鼠标右键</kbd> -> 在此处打开powershell窗口</p> 
        
        使用以下命令进入虚拟环境
        ```bash
        .\Activate.ps1
        ```
        * 若出现`无法加载文件 C:\Users\DH\Desktop\cs\rename.ps1，因为在此系统上禁止运行脚本。`字样
            请以管理员身份打开PowerShell 输入 
            ```bash
            set-executionpolicy remotesigned
            ```
            启用允许运行脚本后，继续使用上面的指令进入虚拟环境

        随后便可进行安装没有成功安装的库
        如 `open_clip` `gfpgan` 等

        示例
        ```bash
        pip install open_clip_torch
        pip install gfpgan
        ```

        Pytorch也可以这样安装
        ```bash
        pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
        ```

        ![sc06](/img/Article_001/Snipaste_2023-05-22_19-50-35.jpg)

5. 等出现以下内容，代表没有找到模型
    ![sc07](/img/Article_001/Snipaste_2023-05-22_20-20-03.jpg)
    
    在`stable-diffusion-webui\models\Stable-diffusion`里放入你的模型文件
    ![sc08](/img/Article_001/Snipaste_2023-05-22_20-23-52.jpg)

    放入后重新运行脚本，等待下载剩下的文件

6. 等出现如下提示，代表启动成功
    ![sc09](/img/Article_001/Snipaste_2023-05-22_20-27-09.jpg)

    浏览器打开table-diffusion创建的本地服务器网页 http://127.0.0.1:7860/

    打开网页的界面如下：
    ![sc10](/img/Article_001/Snipaste_2023-05-22_20-32-44.jpg)
    
    * 进行以下操作
        1. 点击Extensions页卡
        2. 点击Available页卡
        3. 取消勾选`localization`这个Tag
        4. 点击Load From
        5. 在搜索框搜索 zh_CN
        6. 点击Instll按钮
    ![sc13](/img/Article_001/Snipaste_2023-05-22_20-50-59.jpg)
    
    * 安装完成后去应用，进行如下操作
        1. 点击Settings页卡
        2. 点击User interface
        3. 点击Localization (requires restart) 的刷新按钮
        4. 选择 zh_CN 
        5. 点击Apply Settings
        6. 点击Reload UI
            这样就应用中文了
            若发生报错，请参考下文
    ![sc14](/img/Article_001/Snipaste_2023-05-22_20-59-10.jpg)
    
    若出现以下报错，这是应该这个Web界面并没有被魔法代理，需要在启动项添加参数。

    ![sc11](/img/Article_001/Snipaste_2023-05-22_20-36-06.jpg)
    
    在启动项添加
    ```bash
    --no-gradio-queue
    ```
    ![sc12](/img/Article_001/Snipaste_2023-05-22_20-40-00.jpg)

    以上便是部署的教程


# 启动项参数
1. 参数 `--xformers`
    优化显存占用的插件，仅支持N卡
    第一次添加会自动下载，请等待下载完毕

2. 以下是我的启动参数，显卡是RTX2060，用着没啥问题

    ```bash
    set COMMANDLINE_ARGS=--medvram --always-batch-cond-uncond --deepdanbooru --xformers --precision full --no-half --skip-torch-cuda-test --no-gradio-queue
    ```



3. 以下是低显存的一些方案，来源贴在文章结尾了

    低显存2G 启动参数
    ```bash
    set COMMANDLINE_ARGS=--lowvram --always-batch-cond-uncond --deepdanbooru --xformers
    ```

    低显存4G 启动参数
    ```bash
    set COMMANDLINE_ARGS=--medvram --always-batch-cond-uncond --deepdanbooru --xformers
    ```

    低显存6G 启动参数 
    ```bash
    set COMMANDLINE_ARGS=--medvram --always-batch-cond-uncond --deepdanbooru --xformers
    ```

    8G及以上显存 启动参数
    ```bash
    set COMMANDLINE_ARGS=--always-batch-cond-uncond --deepdanbooru --xformers
    ```

    CPU启动（控制台不动可能需要回车）
    ```bash
    set COMMANDLINE_ARGS=--use-cpu all --no-half --skip-torch-cuda-test --deepdanbooru
    ```


# Links
以下是参考的文章和视频
[Powershell禁止运行脚本解决方法](https://www.jianshu.com/p/4eaad2163567)
[哔哩哔哩专栏 关于在安装novelai程序上的一些问题](https://www.bilibili.com/read/cv18993095)
[GitHub Pip无法安装指定的库](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/3261)
[Bilibili NovelAI部署教程](https://www.bilibili.com/video/av477817628/)
[Web界面something went wrong](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/9150)
[Git配置代理](https://www.cnblogs.com/WNpursue/p/14987768.html)
[Bilibili专栏 NovelAI启动参数](https://www.bilibili.com/read/cv19275515)
