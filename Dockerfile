FROM centos/ruby-23-centos7

USER root

RUN yum -y groupinstall "Development Tools"
RUN yum -y install readline-devel ncurses-devel gdbm-devel glibc-devel make \
    openldap-devel sqlite-devel openssl-devel libyaml-devel libffi-devel zlib-devel \
    epel-release wget centos-release-scl ruby-devel rh-ruby23-ruby-devel cmake \
    libxslt-devel libxml2-devel mysql mysql-devel

RUN source scl_source enable rh-ruby23
