#!/bin/sh

ARGS="-d -i 1 -p 0.5 0.90"
#ARGS="$ARGS -t 120 -h /dev/hda"

start() {
  echo -n "Starting cpudynd: "
  cpudynd $ARGS
  if [ $? = 0 ]; then
    echo "done."
  else
    echo "(failed.)"
  fi
}

stop() {
  echo -n "Stopping cpudynd: "
  pkill cpudynd
  echo "stopped."
}

case "$1" in
  start)   start ;;
  stop)    stop  ;;
  restart) $0 stop
           $0 start
           ;;
  *)       echo "Usage: $0 {start|stop|restart}"
           exit 1
           ;;
esac
