FROM centos:latest
MAINTAINER "FinalDuty" <root@finalduty.me>

ADD https://raw.githubusercontent.com/finalduty/configs/master/.bashrc /root/
ADD https://raw.githubusercontent.com/finalduty/configs/master/.vimrc /root/

RUN yum install dnf dnf-plugins-core; yum clean all -q -y
RUN dnf install -y centos-release epel-release bash-completion vim; dnf clean all -q -y
