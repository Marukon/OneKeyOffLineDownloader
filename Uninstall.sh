#!/bin/bash
#===============================================================
#	System Required: CentOS/Debian/Ubuntu
#	Description: OneKeyOffLineDownloader-Uninstall
#	Version: 1.0
#	Author: Mr.Au
#	Github: https://github.com/MRAUStuty/OneKeyOffLineDownloader
#===============================================================

get_char() {
    SAVEDSTTY=`stty -g`
    stty -echo
    stty cbreak
    dd if=/dev/tty bs=1 count=1 2> /dev/null
    stty -raw
    stty echo
    stty $SAVEDSTTY
}

clear
echo "----------------------------------------------------------"
echo " Auto Uninstall OneKeyOffLineDownloader"
echo
echo " URL: https://github.com/MRAUStuty/OneKeyOffLineDownloader"
echo "----------------------------------------------------------"
echo
echo "Press any key to start...or Press Ctrl+C to cancel"
char=`get_char`
cd /root
kill -9 $(ps -ef | grep onekeyod | grep -v grep | awk '{print $2}')
rm -rf OneKeyOffLineDownloader go go1.13.5.linux-amd64.tar.gz download /usr/local/go
echo "Done!"
exit 0