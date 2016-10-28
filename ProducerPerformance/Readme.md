
# Kafka Producer Performance Test

This is a docker image of an Kafka 0.10.1 image that makes running a load test easy.

## Requirements

- Docker

## Running

The script takes any command line arguments the java class accepts. Pass them in the same manner you would if running it without docker.

### To find the options:

```bash
./docker_run_perftest.sh -h

Option                                  Description                            
------                                  -----------                            
--batch-size <Integer: size>            Number of messages to write in a       
                                         single batch. (default: 200)         
--broker-list <hostname:port,..,        REQUIRED: broker info the list of      
 hostname:port>                          broker host and port for bootstrap.  
 ...
```

Then run like:

```bash
./docker_run_perftest.sh \
--broker-list=mybroker1:9092 \
--messages=40000 \
--topic=Test01 \
--threads=5 \
```
