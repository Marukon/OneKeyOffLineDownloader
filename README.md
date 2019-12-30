# OneKeyOffLineDownloader
## 准备环境
- 可以先尝试用我编译好的版本，如果报错再尝试使用安装脚本。
- 安装脚本会自动安装GO语言环境，如果已经自己搭建了GO环境的请谨慎使用本脚本。
- 卸载脚本会移除安装脚本生成的所以文件，所以非本安装脚本搭建的请勿使用卸载脚本，因为很暴力。
- 需要提前安装Wget和Git。
## 直接运行
- wget -N --no-check-certificate https://raw.githubusercontent.com/MRAUStuty/OneKeyOffLineDownloader/master/runonekeyod.sh && chmod +x runonekeyod.sh && bash runonekeyod.sh
### 移除运行版
- wget -N --no-check-certificate https://raw.githubusercontent.com/MRAUStuty/OneKeyOffLineDownloader/master/removeonekeyod.sh && chmod +x removeonekeyod.sh && bash removeonekeyod.sh
## 安装
- wget -N --no-check-certificate https://raw.githubusercontent.com/MRAUStuty/OneKeyOffLineDownloader/master/install.sh && chmod +x install.sh && bash install.sh
### 卸载安装版
- wget -N --no-check-certificate https://raw.githubusercontent.com/MRAUStuty/OneKeyOffLineDownloader/master/uninstall.sh && chmod +x uninstall.sh && bash uninstall.sh
## 使用
- 访问ip:8081即可。如需直接访问请修改源码的端口为80后编译一次，或者用Nginx进行反代。
## 路径相关
- GO安装路径：/usr/local/go
- 下载器安装路径：/root/go
- 下载文件路径： /root/download