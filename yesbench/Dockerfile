FROM alpine:3.3

COPY yesbench.sh /root/
RUN chmod +x /root/yesbench.sh

RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --update alpine-sdk bash python cmake
RUN curl https://codeload.github.com/edenhill/kafkacat/tar.gz/master | tar xzf - && cd kafkacat-* && bash ./bootstrap.sh
RUN ln -s /kafkacat-master/kafkacat /bin/kafkacat

WORKDIR $HOME/
ENTRYPOINT ["/bin/bash"]
USER root

