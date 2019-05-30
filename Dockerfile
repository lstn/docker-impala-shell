FROM debian:stretch-20190506-slim

RUN apt-get update && \
    apt-get install -yq wget libsasl2-2 python python-setuptools locales && \
    sed -i '/^#.* en_US\.UTF.* /s/^#//' /etc/locale.gen && \
    locale-gen

RUN wget -O /tmp/impala-shell.deb https://archive.cloudera.com/cdh6/6.2.0/ubuntu1804/apt/pool/contrib/i/impala/impala-shell_3.2.0+cdh6.2.0-967373_amd64.deb --no-check-certificate && \
    dpkg -i /tmp/impala-shell.deb

ENV LANG en_US.utf-8
ENV LANGUAGE en_US.utf-8
ENV LC_ALL en_US.utf-8