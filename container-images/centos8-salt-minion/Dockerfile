FROM centos:8
LABEL maintainer="docker.maint@expresswebsystems.com"

RUN yum install -y epel-release && \
    yum install -y --nogpgcheck https://repo.saltproject.io/py3/redhat/salt-py3-repo-latest.el8.noarch.rpm && \
    yum clean expire-cache && \
    yum update -y && \
    yum install -y salt-minion && \
    yum clean all && \
    rm -rf /var/cache/yum

# Rename the salt master host to be "salt-master" so that it can be found via Docker's DNS
RUN sed -i "s|#master: salt|master: salt-master|g" /etc/salt/minion

ENTRYPOINT ["salt-minion", "-l", "debug"]