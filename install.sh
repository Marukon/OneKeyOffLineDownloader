#!/bin/bash
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
cd /root/go
git git@github.com:MRAUStuty/OneKeyOffLineDownloader.git
go get -u github.com/valyala/fasthttp
go run src/web.go