# Linux 服务端教程

[Toc]

## 1. 下载整合包

1.  在本项目的起始页面找到右侧的 `release` 下方的标签
    ![网页捕获_24-4-2022_124521_github com](https://user-images.githubusercontent.com/71167373/164957061-ce1707b7-d0f7-4d97-8e4e-2606f9baf8e6.jpeg)
2.  点击它（格式通常是<发行版本>-<发行状态（alpha、beta、release 这种）>），然后下滑到最下方
3.  找到 `Assets` 下方的服务端

    > 通常是 StarryNight*Server * <版本号> \_ <发行版本>

4.  点击以下载
5.  解压它备用

## 2. 安装 Java8

安装 openjdk-8
debian

```bash
sudo apt update
sudo apt upgrade
sudo apt install openjdk-8-jdk
```

centen os

```bash
sudo yum update
sudo yum install java-1.8.0-openjdk-devel
```

arch

```bash
pacman -Sy
pacman -S jdk8-openjdk
```

## 3. 配置服务器

1. 打开你一开始解压好服务端备用的所在目录
   你可以看到一下几个文件

   1. CatServer-<版本>.jar —— 服务端主文件
   2. server.properties —— 需要用户编辑的配置文件
   3. changelog.txt —— 描述以往发行的更改

   其他不要改也不要动

2. 编辑 `server.properties`
   1. 右键 `server.properties` 选择打开或者点击 `打开方式` 选择你喜欢的文本编辑器
   2. 自行更改以下等号后面的参数

      ```
      spawn-protection=0
      #出生点保护半径(若没有op则不生效)

      max-tick-time=60000
      #设置每个tick花费的最大毫秒数

      server-name=StP Server
      #服务器名称

      generator-settings=
      #自定义生成（建议不要动）

      force-gamemode=false
      #玩家加入服务器时强制变成默认游戏模式

      allow-nether=true
      #是否开启地狱世界(关闭后删除将不会生成地狱世界)

      gamemode=0
      #默认进入的游戏模式

      broadcast-console-to-ops=true
      #向op广播控制台信息

      enable-query=false
      #不要动

      player-idle-timeout=0
      #当进入AFK模式,在<等号后面的数>秒踢出服务器,设置成0为不踢出服务器

      difficulty=3
      #难度，0和平，1简单，2普通,3困难

      spawn-monsters=true
      #是否生成怪物

      op-permission-level=4
      #设置op的权限等级

      pvp=true
      #是否允许pvp

      snooper-enabled=true
      #是否启用数据反馈（反馈至mojang）

      hardcore=false
      #是否启用极限模式（只能死一次，死后被ban）

      enable-command-block=true
      #是否启用命令方块

      max-players=20
      #最多允许多少人进入

      network-compression-threshold=256
      #别动

      resource-pack-sha1=
      #校验资源包的sha1值，别动

      max-world-size=29999984
      #世界半径

      server-port=25565
      #服务器端口

      server-ip=
      #服务器ip，只允许使用该IP进入。可以填域名。

      allow-flight=false
      #是否允许飞行

      level-name=world
      #主世界名称

      view-distance=8
      #服务器发送区块量

      resource-pack=
      #资源包下载（贴url），建议不要动

      displayname=Fill this in if you have set the server to public\!
      #公开服务器名

      discoverability=unlisted
      #未知，不要动

      spawn-animals=true
      #是否生成动物

      white-list=false
      #是否开启白名单

      generate-structures=true
      #是否生成结构，别动

      max-build-height=256
      #最高建造上限

      online-mode=false
      #是否开启正版验证

      level-seed=
      #种子

      prevent-proxy-connections=false
      #开启后禁止在启用正版验证的情况下使用VPN

      motd=A StP ModPack Server
      #服务器描述

      enable-rcon=false
      #是否允许访问服务器控制台
      ```
3. 启用 `eBackup`
   > eBackup 是一个服务端备份插件，具有高度自定义性，对于想要与多个玩家游玩的服主很有用。
   1. 在目录下找到 `plugins`并进入
   2. 将 `ebackup-<版本号>.jar.disabled` 并把文件名末尾的 `.disabled` 去掉
   3. 在目录下创建 `eBackup` 文件夹 并创建 `config.yml` 在其中填入

      [相关汉化](https://www.mcbbs.net/thread-957949-1-1.html)

      ```
      crontask: '0 0 */2 * * *'

      # CronTask format:
      # * * * * * *
      # | | | | | |
      # | | | | | +---- Day of the Week   (1-7)
      # | | | | +------ Month             (1-12)
      # | | | +-------- Day of the Month  (1-31)
      # | | +---------- Hour              (0-23)
      # | +------------ Minute            (0-59)
      # +-------------- Second            (0-59)

      # A few more examples...
      # crontask: '0 0 * * * *' This would make it every hour
      # crontask: '0 0 4 * * 7' This would make it every sunday at 4 AM
      # crontask: '0 0 4 1 * *' This would make it every first of the month at 4 AM
      # crontask: '0 30 3 */2 * *' This would make it at 3:30 AM every 2 days

      # If you do /ebackup reload, you can see a description in the console of what the cron task does.

      backup-format: 'StP_Server-{DATE}'

      # The folder where to store the backups locally.
      backup-path: '~/mc-backup'

      # The maximum backups stored. Will delete older backups when reached. (≤ 0 to disable)
      # Note: this will only work with local backups (fallbacks included).
      max-backups: 42

      # Delete the local backup after each upload.
      delete-after-upload: false

      # Zip compression level (0-9)
      # Increase it to reduce file size, but backups will be more CPU intensive and take longer
      compression-level: 7

      # FTP/SFTP settings and configuration.
      # Backups saved here will not be auto-deleted.
      ftp:
          enable: false
          path: '~/backups/'
          type: ftp # ftp for ftp, sftp for ftp over ssh
          host: ''
          port: 10086
          user: ''
          pass: ''
          use-key-auth: false # use key based authentication for sftp (ignores password)
          private-key: ''
          private-key-password: '' # leave blank if the private key has no password

      # What you want in the backup.
      # By default, everything will be backupped, you can remove files/directories in the ignore section
      backup:
          pluginjars: true # The .jar files for the plugins
          pluginconfs: true # The data folder of each plugin
          ignore: # Files/directories to ignore and NOT backup
              - 'plugins/eBackup/backups'
              - 'plugins/CoreProtect'
              - 'logs'
              - 'mods'
              - 'config'
              - 'scripts'
              - 'bukkit.yml'
              - 'catserver.yml'
              - 'CatServer-90f3208-universal.jar'
              - 'changelog.txt'
              - 'LICENSE'
              - 'modlist.txt'
              - 'README.md'
              - 'README.txt'
              - 'server.properties'
              - 'servermodlist.txt'
              - 'spigot.yml'
              - 'start.bat'
              - 'start_en_US.bat'
              - 'version.1.2.2_alpha'
              - 'libraries'
              - 'caches'
              - '.mixin.out'
              - 'asm'
              - 'local'
              - 'usercache.json'
              - 'usernamecache.json'
              - 'options.txt'
              - 'ops.json'
              - 'help.yml'
              - 'crafttweaker.log'
              - 'commands.yml'
              - 'journeymap'
              - 'astralsorcery'
              - 'patchouli_books'
              - 'eula.txt'
              - 'permissions.yml'
              - 'stall-reports'
      ```

      以使用 eBackup 来每两小时小时备份一次
      保存地址：~/mc-backup
## 4. 开服

```bash
java -server -Xmx<最大内存> -Xms<最小内存> -XX:+UnlockExperimentalVMOptions -XX:+AggressiveOpts -XX:+UseCompressedClassPointers -XX:+ParallelRefProcEnabled -XX:+DisableExplicitGC -XX:+UseCompressedOops -Dsun.rmi.dgc.server.gcInterval=3600000 -XX:+ExplicitGCInvokesConcurrent -XX:+UseG1GC -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=70 -XX:G1MixedGCLiveThresholdPercent=35 -XX:MaxGCPauseMillis=100 -XX:TargetSurvivorRatio=90 -XX:+AlwaysPreTouch -XX:+UseStringDeduplication -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true -XX:-OmitStackTraceInFastThrow -XX:+OptimizeStringConcat -XX:+UseAdaptiveGCBoundary -XX:NewRatio=3 -Dfml.readTimeout=90 -XX:+UseFastAccessorMethods -Dusing.aikars.flags=mcflags.emc.gs -Dfml.queryResult=confirm -jar CatServer-<版本>.jar -nogui
```

如果不想要优化的的话直接输下面的命令即可
```bash
java -Xmx<最大内存> -Xms<最小内存> -jar CatServer-<版本>.jar -nogui
```

开启您的开服之旅

等待服务端加载完成后由于上游原因会自动同意一份EULA协议：

> By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula).

输入op <用户名> 来给与op权限

输入stop来停止和保存服务器存档

eBackup指令

![image](https://user-images.githubusercontent.com/71167373/164968105-b7622394-1e2c-41fe-880a-888aeb5f56e4.png)

说明

https://www.mcbbs.net/thread-957949-1-1.html

其他问题可以来QQ群聊[664266845(点击可加入)](https://jq.qq.com/?_wv=1027&k=KAJoy57r)提问