#!/bin/bash

args=("$@")

if [ ${args[0]} = "-h" ]
    then
        docker run -it eventador/kafkaproducerperftest /kafka/bin/kafka-run-class.sh kafka.tools.ProducerPerformance
    else
        docker run -it eventador/kafkaproducerperftest /kafka/bin/kafka-run-class.sh kafka.tools.ProducerPerformance $@
fi
