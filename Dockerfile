FROM centos:7
MAINTAINER "FinalDuty" finalduty@github.com

RUN curl https://raw.githubusercontent.com/finalduty/docker-centos7/CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo
RUN curl https://raw.githubusercontent.com/finalduty/git/master/configs/.bashrc > /root/.bashrc
RUN curl https://raw.githubusercontent.com/finalduty/git/master/configs/.vimrc > /root/.vimrc
RUN yum install -y epel-release

RUN yum update -y
RUN yum install vim
