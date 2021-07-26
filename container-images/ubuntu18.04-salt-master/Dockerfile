FROM ubuntu:18.04
LABEL maintainer="docker.maint@expresswebsystems.com"

# Set the timezone to GMT so that we don't get prompted in apt later
ENV TZ=GMT
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install salt-master and clean up in one RUN command
# This is done to keep the image small (as each RUN would create a new layer to the image)
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install curl && \
    curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/18.04/amd64/latest/salt-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg] https://repo.saltproject.io/py3/ubuntu/18.04/amd64/latest bionic main" | tee /etc/apt/sources.list.d/salt.list && \
    apt-get -y update && \
    apt-get -y install salt-master && \
    /bin/rm -rf /tmp/* && \
    /bin/rm /var/log/alternatives.log && \
    /bin/rm /var/log/apt/* && \
    /bin/rm /var/log/dpkg.log && \
    apt-get -y autoclean all

# Set the salt-master process to auto accept all keys from minions
# This is a large security risk in the wild, but not a problem in a dev environment
# Don't do this in production. Seriously...
RUN sed -i "s|#auto_accept: False|auto_accept: True|g" /etc/salt/master

ENTRYPOINT ["salt-master", "-l", "debug"]