FROM centos
MAINTAINER "FinalDuty" <root@finalduty.me>

ADD https://raw.githubusercontent.com/finalduty/configs/master/.bashrc /root/
ADD https://raw.githubusercontent.com/finalduty/configs/master/.vimrc /root/

RUN yum install dnf dnf-plugins-core; yum clean all -q -y
RUN yum install -y centos-release epel-release bash-completion vim; yum clean all -q -y
