#!/bin/bash

cd $(dirname $0)

hsync_bin=`readlink -f ../bin/hsync_linux`
cmd="$hsync_bin -d hsyncd.json"

ps aux|grep "$cmd"|grep -v grep|awk '{print "kill ",$2}'|sh

cmd="$cmd  -log_dir=`readlink -f ./log/`"

mkdir -p log

nohup $cmd >log/hsynd.log 2>&1 &