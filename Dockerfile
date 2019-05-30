FROM debian:stretch-20190506-slim

ENV IMPALA_DEB https://archive.cloudera.com/cdh6/6.2.0/ubuntu1804/apt/pool/contrib/i/impala/impala-shell_3.2.0+cdh6.2.0-967373_amd64.deb

RUN apt-get update --no-install-recommends && \
    apt-get install -yq wget libsasl2-2 python python-setuptools locales --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    sed -i '/^#.* en_US\.UTF.* /s/^#//' /etc/locale.gen && \
    locale-gen && \
    wget -O /tmp/impala-shell.deb $IMPALA_DEB --no-check-certificate && \
    dpkg -i /tmp/impala-shell.deb && \
    rm -rf /tmp/impala-shell.deb && dpkg -P --force-all python-setuptools

ENV LANG en_US.utf-8
ENV LC_ALL en_US.utf-8