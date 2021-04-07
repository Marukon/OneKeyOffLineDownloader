#!/bin/bash
#===============================================================
#	System Required: CentOS/Debian/Ubuntu
#	Description: OneKeyOffLineDownloader-RUN
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
echo " OneKeyOffLineDownloader "
echo
echo " URL: https://github.com/MRAUStuty/OneKeyOffLineDownloader"
echo "----------------------------------------------------------"
echo
echo "Press any key to start...or Press Ctrl+C to cancel"
char=`get_char`
cd /root
git clone https://github.com/Marukon/OneKeyOffLineDownloader.git
mkdir go
mv /root/OneKeyOffLineDownloader/bin /root/go
chmod +x /root/go/bin/onekeyod
cd /root/go/bin
nohup ./onekeyod >> /dev/null 2>&1 &
echo "Done!"
exit 0
