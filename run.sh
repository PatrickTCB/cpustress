COUNT=`cat /proc/cpuinfo | awk '/^processor/{print $3}' | wc -l`
stress --cpu $COUNT --timeout $RUNTIME