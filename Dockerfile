### finalduty@github.com [rev: 995a294]
## Docker file for CentOS 7 Base Image
FROM centos:7
MAINTAINER "FinalDuty" <andy.dustin@gmail.com>

RUN \
  curl -s https://raw.githubusercontent.com/finalduty/configs/master/.bashrc > /root/.bashrc; \
  curl -s https://raw.githubusercontent.com/finalduty/configs/master/.vimrc > /root/.vimrc; \
  curl -s https://raw.githubusercontent.com/finalduty/docker-centos7/master/CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo

#RUN yum update -q -y && yum install -q -y centos-release epel-release vim
