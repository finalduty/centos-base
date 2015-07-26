### andy@webdrive.co.nz [rev: 9102058]
## Docker file for CentOS 7
FROM centos:7
MAINTAINER "FinalDuty" finalduty@github.com

RUN \
curl -s https://raw.githubusercontent.com/finalduty/git/master/configs/.bashrc > /root/.bashrc; \
curl -s https://raw.githubusercontent.com/finalduty/git/master/configs/.vimrc > /root/.vimrc; \
curl -s https://raw.githubusercontent.com/finalduty/docker-centos7/master/CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -qy epel-release vim; yum update -qy
