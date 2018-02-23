FROM centos:7
LABEL maintainer="GiaBar <giabar@giabar.com>"
RUN yum clean all &&\
    rm -rf /var/cache/yum &&\
    yum -y install deltarpm epel-release &&\
    yum -y install \
      nano \
      wget \
      which \
      perl \
      openssh-clients \
      ansible \
      python-docker-py \
      python-docker-registry-core \
      zip \
      unzip \
      bzip2 \
      lsof \
      passwd \
      sudo \
      rsync &&\
    yum clean all &&\
    rm -rf /tmp/* &&\
    rm -rf /var/tmp/* &&\
    rm -rf /var/cache/yum
