#!/bin/sh -x

KILL_CMD=pkill

$KILL_CMD coredns

sleep 2

if [ ! -d logs ]; then
  mkdir logs
fi

nohup ./coredns -dns.port 10053 2>&1 | svlogd logs &
