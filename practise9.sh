#!/bin/bash
# script case statement

echo "enter command"
read command

case "$command" in start|Start|START)
cd /tmp/sleep­walking­server
;;

case "$command" in stop|Stop|STOP)
kill $(cat /tmp/sleep­walking­server.pid)
;;

*)
echo "Wrong input entered"
;;
esac
