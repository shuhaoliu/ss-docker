FROM ubuntu:18.04

MAINTAINER Shuhao Liu <shuhao@ece.toronto.edu>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python curl python-pip
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

COPY * /var/ss/
WORKDIR /var/ss

CMD /var/ss/run.sh