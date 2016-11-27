FROM centos:6
MAINTAINER "FinalDuty" <root@finalduty.me>

ENV container docker
VOLUME ["/sys/fs/cgroup"]

ADD https://raw.githubusercontent.com/finalduty/configs/master/.bashrc /root/
ADD https://raw.githubusercontent.com/finalduty/configs/master/.vimrc /root/
ADD CentOS-Base.repo /etc/yum.repos.d/

RUN yum install -y centos-release epel-release bash-completion vim; yum clean all -q -y
RUN yum update -y; yum clean all -q -y
