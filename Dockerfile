FROM python:3.7.3-alpine3.9

RUN apk --no-cache add g++ \ 
      && apk --no-cache add zeromq-dev \
      && apk --no-cache add libffi-dev \
      && apk --no-cache add openssl-dev \
      && pip install locustio pyzmq requests_ntlm

EXPOSE 8089 5557 5558

ENTRYPOINT ["/usr/local/bin/locust"]

