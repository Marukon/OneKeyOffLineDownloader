#!/bin/bash
#================================================================
#	System Required: CentOS/Debian/Ubuntu
#	Description: OneKeyOffLineDownloader-Install
#	Version: 1.0
#	Author: Mr.Au
#	Github: https://github.com/MRAUStuty/OneKeyOffLineDownloader
#================================================================

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
echo " Auto install OneKeyOffLineDownloader"
echo
echo " URL: https://github.com/MRAUStuty/OneKeyOffLineDownloader"
echo "----------------------------------------------------------"
echo
echo "Press any key to start...or Press Ctrl+C to cancel"
char=`get_char`
cd /root
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
git clone https://github.com/MRAUStuty/OneKeyOffLineDownloader.git
mkdir go
mv /root/OneKeyOffLineDownloader/src /root/go
cd go
go get -u github.com/valyala/fasthttp
go build /root/go/src/onekeyod.go
nohup ./onekeyod >> /dev/null 2>&1 &
echo "Done!"
exit 0