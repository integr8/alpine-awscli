FROM alpine:3.8
LABEL maintainer="Fábio Luciano <fabio@naoimporta.com>"

WORKDIR /opt/

RUN apk add --no-cache  py2-pip \
  && pip install --upgrade pip  &&  pip install --no-cache-dir --upgrade --user awscli

ENTRYPOINT [ "/root/.local/bin/aws" ]