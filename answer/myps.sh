#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <PID>"
    exit 1
fi

PID=$1


if ps -p "$PID" > /dev/null 2>&1; then
    ps -p "$PID" -o f,s,uid,pid,ppid,c,pri,ni,addr,sz,wchan,tty,time,cmd
else
    echo "no process found for $PID"
fi