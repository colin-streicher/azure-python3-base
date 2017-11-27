FROM alpine:3.6


RUN apk update && \
  apk add python3 python3-dev build-base libffi-dev openssl-dev && \
  pip3 install azure-storage && \
  apk del build-base openssl-dev libffi-dev && \
  rm -rf /var/cache/apk/*  
