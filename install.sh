#!/bin/bash
#=================================================
#	System Required: CentOS/Debian/Ubuntu
#	Description: OneKeyOffLineDownloader
#	Version: 1.0
#	Author: Mr.Au
#	Github: https://github.com/MRAUStuty/OneKeyOffLineDownloader
#=================================================
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
cd /root
mkdir go
cd go
git clone git@github.com:MRAUStuty/OneKeyOffLineDownloader.git
go get -u github.com/valyala/fasthttp
go run src/web.go