FROM centos:8
LABEL maintainer="docker.maint@expresswebsystems.com"

RUN yum install -y epel-release && \
    yum install -y --nogpgcheck https://repo.saltproject.io/py3/redhat/salt-py3-repo-latest.el8.noarch.rpm && \
    yum clean expire-cache && \
    yum update -y && \
    yum install -y salt-master && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN sed -i "s|#auto_accept: False|auto_accept: True|g" /etc/salt/master

ENTRYPOINT ["salt-master", "-l", "debug"]