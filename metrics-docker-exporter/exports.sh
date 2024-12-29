export APP_METRICS_PORT=`jq '."metrics-addr"' '/etc/docker/daemon.json' | cut -d : -f 2 | cut -d \" -f 1`
