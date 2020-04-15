FROM centos:latest
MAINTAINER haveyb "haveyb@163.com"
RUN groupadd -r redis && useradd  -r -g redis redis
RUN  yum -y update &&  yum -y install epel-release \
&&   yum -y install redis  && yum -y install wget \
&&   yum -y install net-tools \
&&   yum -y install  ruby && yum  -y install  rubygems
RUN  yum -y install redis
COPY  ./redis-trib.rb  /usr/bin
COPY  ./redis.sh       /usr/bin
RUN  mkdir -p /config  && chmod  775  /usr/bin/redis.sh




