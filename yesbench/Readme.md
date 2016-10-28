## yesbench

yesbench is only half-way serious. It's a very simplistic load generator
based on the unix utility ```yes``` and [kafkacat](https://github.com/edenhill/kafkacat). The idea came about when @erikbeebe started using these tools to quickly test Kafka.

The tool itself isn't super configurable, and doesn't do a great job of even generating load. The upside is it's easy to use.

## Requirements

- docker

## Running

First set environment variables for the brokers and topic you want to send load to. Then run the script.

```bash
export EV_BROKERS="mybroker1:9092,mybroker2:9092"
export EV_TOPIC="foo"
./docker_run_yesbench.sh
```

The script runs forever, and produces no useful output for measurements. It simply makes load. Client connection settings, batch sizing, compression, etc aren't exposed.
