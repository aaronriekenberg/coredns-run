#!/bin/sh

pgrep coredns > /dev/null 2>&1
if [ $? -eq 1 ]; then
  cd ~/coredns
  ./restart.sh > /dev/null 2>&1
fi
