FROM centos:latest
MAINTAINER "FinalDuty" <root@finalduty.me>

RUN \
  curl -s https://raw.githubusercontent.com/finalduty/configs/master/.bashrc > /root/.bashrc; \
  curl -s https://raw.githubusercontent.com/finalduty/configs/master/.vimrc > /root/.vimrc; \
  curl -s https://raw.githubusercontent.com/finalduty/docker-centos/master/CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -q -y centos-release epel-release vim
