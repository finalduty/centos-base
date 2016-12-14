FROM centos
MAINTAINER "FinalDuty" <root@finalduty.me>

ADD https://raw.githubusercontent.com/finalduty/configs/master/.bashrc /root/
ADD https://raw.githubusercontent.com/finalduty/configs/master/.vimrc /root/
ADD CentOS-Base.repo /etc/yum.repos.d/
ADD epel.repo /etc/yum.repos.d/

RUN yum install -q -y centos-release epel-release bash-completion vim less lsof net-tools; yum clean all -q -y
RUN yum update -q -y; yum clean all -q -y
