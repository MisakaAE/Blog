---
#文章标题
title: "Windows本地部署全自动追番AutoBangumi无需Docker容器WSL解决国内无法访问蜜柑CloudFlare反向代理"

#文章创建日期
date: 2023-07-09 12:30:00

#文章更新日期
updated: 2023-07-09 12:30:00

#文章标签
tags: 
    - 教程

#文章分类
categories: 
    - 教程
    - 番剧

#文章关键字
keywords: 

#文章描述stick
description: 
    - 

#文章顶部图片
top_img: "/img/49170889_p0.webp"

#文章缩略图(如果没有设置top_img,文章页顶部将显示缩略图，可设为false/图片地址/留空)
cover: "/img/article_004/AutoBangumi.webp"

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
# 需要的软件

1. [Git](https://git-scm.com/) 用来拉取仓库
2. [Python](www.python.org) 需要的运行环境
3. [JellyfinServer](https://jellyfin.org/downloads/server) 媒体程序
4. [qBitorrent](https://sourceforge.net/projects/qbittorrent/files/qbittorrent-win32/) 下载程序

# 开始
+ 在安装完上述软件后可以进行下一步操作
+ 安装软件步骤不再赘述，Python记得`Add to PATH`
    都下载最新版本即可，Python用3.11.x版本

# 下载release

+ 可选：Clash代理指令（如果你在中国大陆且有机场并用CFW请用，否则忽略这条）
    在常规-端口-终端-复制命令-Powershell
    ![img](/img/article_004/Snipaste_2023-07-09_10-24-36.jpg)
    一般为这个：
```bash
$Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"
```



+ 在GitHub下载release后得到以下文件，在此处打开终端
+ {% btn 'https://github.com/EstrellaXD/Auto_Bangumi/releases','Release',fas fa-link,outline larger %}
    ![img](/img/article_004/Snipaste_2023-11-09_20-50-41.jpg)
    ![img](/img/article_004/Snipaste_2023-11-09_14-44-09.png)

+ Windows11在WindowsTerminal可以直接复制粘贴，Windows10需要逐行复制，报错一般是网络问题
    
    {% note red 'fas fa-warning' simple %}
    注意：新版不需要新建`config.json`
    如果你有多个Python运行环境且默认不是3.11.x请将下面第二行的python.exe 替换为你Python3.11.x的目录
    {% endnote %}

    ```bash
    @echo off
    python.exe -m venv env
    .\env\Scripts\Activate.ps1
    python -m pip install -r requirements.txt
    mkdir data
    mkdir config
    pause
    cd src
    python main.py
    ```

* 若出现`无法加载文件 \env\Scripts\Activate.ps1，因为在此系统上禁止运行脚本。`字样
    请以管理员身份打开PowerShell 输入 
    ```bash
    set-executionpolicy remotesigned
    ```
    启用允许运行脚本后，继续从`.c\env\Scripts\Activate.ps1`开始重新运行指令

* 若最后报错缺失库
    请重新输入以下指令检查是否正确运行
    网络不好多试几次


+ 可选：开机自启（开机自启方法千千万，用自己喜欢的方法就行）
    这里是NSSM
    ```bash
    nssm install AutoBangumi (Get-Command python).Source
    nssm set AutoBangumi AppParameters (Get-Item .\main.py).FullName
    nssm set AutoBangumi AppDirectory (Get-Item ..).FullName
    nssm set AutoBangumi Start SERVICE_DELAYED_AUTO_START
    ```

# 配置AutoBangumi前的准备
1. 设置蜜柑，开启高级订阅
    ![img](/img/article_004/Snipaste_2023-07-09_11-20-34.jpg)
    然后尝试订阅几部番剧

2. 获得蜜柑token
    token就是`https://mikanani.me/RSS/MyBangumi?token=`后面那串字符
    ![img](/img/article_004/Snipaste_2023-07-09_10-53-39.jpg)
    ![img](/img/article_004/Snipaste_2023-07-09_10-55-06.jpg)
    

3. 设置qBitorrent
    开启WebUI，端口看看有没有被占用，没有就用默认的，被占用了就跟着我的设置
    ![img](/img/article_004/Snipaste_2023-07-09_11-02-25.jpg)
    开启RSS自动下载
    ![img](/img/article_004/Snipaste_2023-07-09_11-04-13.jpg)
    
# 设置Autobangumi
## Parser Settings

+ 打开<http://localhost:7892>
    默认用户 `admin`  默认密码 `adminadmin`
    需要设置的主要由两项
+ 填入刚刚获取的token和蜜柑的域名`mikanani.me`
    若你在浏览器打不开`mikanani.me`请考虑使用代理或者以下的CloudFlare反向代理
    或者填入我的域名`mk.misakaae.com`

## Downloader Settings
+ 这里将使用qBittorrent下载，前面已经开启了WebUI的端口
    这里建议用`localhost`:`端口号`，更换了IP不会报错
    账户密码在WebUI中设置，在设置完请在浏览器打开WebUI自己测试能不能进去后再填入
    Download Path下载目录请自行设置，不填的话准备C盘爆炸吧
    ![img](/img/article_004/Snipaste_2023-07-09_11-14-20.jpg)


## CloudFlare 反向代理
+ 如果你在国内遇到了https://mikanani.me 蜜柑打不开的情况，可以考虑CloudFlare的反向代理
+ 需要自己拥有一个域名，使用CloudFlare的Workers反向代理蜜柑
+ 也可以考虑直接用我的，不能保证稳定性
    日访问量限额100k，要是用的人多了我就关了。
    别问，问就是`要钱没有，要命不给`
    我的域名：
    ```no-highlight
    mk.misakaae.com
    ```

+ 如果你要自己搭建反向代理，以下为反向代理脚本内容，不需要添加域名解析，不然会报错
    记得设置自己的域名，关于Workers的使用，网上的教程很多，这里不赘述了
    ```javascript
    const TELEGRAPH_URL = 'https://mikanani.me';
    const MY_DOMAIN = 'https://你的二级域名.你的一级域名.com'

    addEventListener('fetch', event => {
      event.respondWith(handleRequest(event.request))
    })

    async function handleRequest(request) {
      const url = new URL(request.url);
      url.host = TELEGRAPH_URL.replace(/^https?:\/\//, '');

      const modifiedRequest = new Request(url.toString(), {
        headers: request.headers,
        method: request.method,
        body: request.body,
        redirect: 'manual'
      });

      const response = await fetch(modifiedRequest);
      const contentType = response.headers.get('Content-Type') || '';

      // 如果内容类型是 RSS，才进行替换操作
      if (contentType.includes('application/xml')) {
        const text = await response.text();
        const replacedText = text.replace(/https?:\/\/mikanani\.me/g, MY_DOMAIN);
        const modifiedResponse = new Response(replacedText, response);

        // 添加允许跨域访问的响应头
        modifiedResponse.headers.set('Access-Control-Allow-Origin', '*');

        return modifiedResponse;
      } else {
        const modifiedResponse = new Response(response.body, response);

        // 添加允许跨域访问的响应头
        modifiedResponse.headers.set('Access-Control-Allow-Origin', '*');

        return modifiedResponse;
      }
    }
    ```

![img](/img/article_004/Snipaste_2023-07-09_12-36-08.jpg) 
![img](/img/article_004/Snipaste_2023-07-09_12-34-13.jpg)



# 配置Jellyfin
+ 下载Server Windows版
+ 打开<http://localhost:8096/>开始初始化设置
    语言选汉语
    ![img](/img/article_004/Snipaste_2023-07-09_12-42-34.jpg)
    自用的话就别设密码了
    ![img](/img/article_004/Snipaste_2023-07-09_12-45-51.jpg)
    媒体库可以等会再设置
    ![img](/img/article_004/Snipaste_2023-07-09_12-46-53.jpg)
    语言这样设置：
    ![img](/img/article_004/Snipaste_2023-07-09_12-47-35.jpg)
    想要映射到公网可以勾第二个勾
    ![img](/img/article_004/Snipaste_2023-07-09_12-48-40.jpg)
    安装Bangumi插件来自动检测并命名番剧的元数据
    左上角三条杠点一下->控制台->插件->存储库->新建存储库
    ![img](/img/article_004/Snipaste_2023-07-09_12-52-51.jpg)
    安装bangumi插件，点击去install，重启Server生效
    ![img](/img/article_004/Snipaste_2023-07-09_13-01-04.jpg)
    添加媒体库，控制台->媒体库->添加媒体库
    下面有详细设置
    ![img](/img/article_004/Snipaste_2023-07-09_13-09-18.jpg)
    ![img](/img/article_004/627111b0ed2f7.png)
    大功告成
    ![img](/img/article_004/Snipaste_2023-07-09_13-16-09.jpg)
    

# 可选：Jellyfin播放用PotPlayer打开
+ 如果你对番剧的画质有追求，可以配置PotPlayer MadVR和LVA，同时不满浏览器的解码器可以跟着我设置
    你也可以看我之前的文章进行设置 <https://blog.misakaae.com/2023/06/11/article_002/>
1. 首先下载仓库，用git拉取还是去GitHub下载zip都一样，把它放到一个单独的文件夹
    <https://github.com/tccoin/Jellyfin-Potplayer>
    以下这三个文件有用
    ![img](/img/article_004/Snipaste_2023-07-09_13-22-58.jpg)

2. 编辑`Potplayer.ps1`设置PotPlayer路径（用记事本或VSCode均可打开

    ![img](/img/article_004/Snipaste_2023-07-09_13-28-57.jpg)

3. 编辑`potplayer.reg`设置文件夹内的Potplayer.ps1路径（用记事本或VSCode均可打开

    ![img](/img/article_004/Snipaste_2023-07-09_13-30-19.jpg)
    

4. 添加浏览器油猴插件
    Edge浏览器打开<https://microsoftedge.microsoft.com/addons>下载油猴插件
    搜索tempermonkey
    ![img](/img/article_004/Snipaste_2023-07-09_13-37-39.jpg)
    打开油猴插件管理面板
    ![img](/img/article_004/Snipaste_2023-07-09_13-39-45.jpg)
    全选默认的内容删掉并粘贴刚刚文件夹内的`userscript.js`的内容
    ![img](/img/article_004/Snipaste_2023-07-09_13-41-21.jpg)
    若是点击播放按钮不生效手动添加以下几项
    ![img](/img/article_004/Snipaste_2023-07-09_13-43-54.jpg)

# Others
## 若是想在Autobangumi窗口看Jellyfin的内容
+ 可以在Media Player Settings 设置 type=`ifarame` url=`localhost:Jelltfin端口号`
    ![img](/img/article_004/Snipaste_2023-07-09_13-46-37.jpg)
    设置完点`Apply`

# Q&A
1. Q:为什么在Windows本地部署？
    A:因为老子爱在哪部署在哪部署，Windows上弄Docker太吃性能，机械硬盘就硬造
    不是每个人都有钱买服务器或者NAS
2. Q:为什么报错检查IP端口？
    A:都报错了检查IP端口，powershell输入`netstat -ano 1`看端口被哪个应用占用了，改那个应用端口或者改你的autobangumi端口去，打不开WebUI就在`\Auto_Bangumi\backend\src\config\config_dev.json`这里改
3. Q:为什么xxx这里出错了
    带上报错代码去GitHub发个issue <https://github.com/EstrellaXD/Auto_Bangumi>

# 版权声明
+ 搞爬虫不要不识好歹，敢复制粘贴抹掉我的信息我直接把你妈杀了
    ![img](/img/article_004/dragonMB.png)

# Links
{% btn 'https://github.com/EstrellaXD/Auto_Bangumi','官方GitHub',fas fa-link,outline larger %}
{% btn 'https://github.com/EstrellaXD/Auto_Bangumi/wiki','官方Wiki',fas fa-link,outline larger %}
{% btn 'https://space.bilibili.com/66767091','我的睿站',fas fa-link,outline larger %}
