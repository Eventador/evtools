#!/bin/bash
#
# A script to put some generic load on kafka
# requires kafkacat
# this was all Erik's idea/fault
#

if [ -z "$EV_BROKERS" ];
    then
        export EV_BROKERS="localhost:9092"
fi

if [ -z "$EV_TOPIC" ];
    then
        export EV_TOPIC="mytopic"
fi

type kafkacat &>/dev/null
if [ $? -eq 1 ];
    then
        echo "install kafkacat and put in your path!"
        echo "https://github.com/edenhill/kafkacat"
        echo "exiting.."
        exit 1
    else
        echo "Found kafkacat, let's do this"
fi

echo "starting load to topic: $EV_TOPIC against broker(s): $EV_BROKERS"
echo "ctrl-c to stop"

yes | kafkacat -b $EV_BROKERS -P -t $EV_TOPIC -vv
