#!/bin/bash
# script that launches yesbench

if [[ -z "$EV_BROKERS" || -z "$EV_TOPIC" ]];
    then
        echo "Set EV_BROKERS and EV_TOPICS before running"
    else
        docker run -it \
        -e EV_BROKERS=$EV_BROKERS \
        -e EV_TOPIC=$EV_TOPIC \
        eventador/yesbench /root/yesbench.sh
fi
