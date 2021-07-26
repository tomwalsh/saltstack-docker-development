FROM ubuntu:20.04
LABEL maintainer="docker.maint@expresswebsystems.com"

# Set the timezone to GMT so that we don't get prompted in apt later
ENV TZ=GMT
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install salt-minion and clean up in one RUN command
# This is done to keep the image small (as each RUN would create a new layer to the image)
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install curl && \
    curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/salt-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg] https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest focal main" | tee /etc/apt/sources.list.d/salt.list && \
    apt-get -y update && \
    apt-get -y install salt-minion && \
    /bin/rm -rf /tmp/* && \
    /bin/rm /var/log/alternatives.log && \
    /bin/rm /var/log/apt/* && \
    /bin/rm /var/log/dpkg.log && \
    apt-get -y autoclean all

# Rename the salt master host to be "salt-master" so that it can be found via Docker's DNS
RUN sed -i "s|#master: salt|master: salt-master|g" /etc/salt/minion

ENTRYPOINT ["salt-minion", "-l", "debug"]