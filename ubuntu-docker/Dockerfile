FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user ubuntu

# Docker's official GPG key
# 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD8
# https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository
RUN \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add \
    && apt-key fingerprint 0EBFCD88 \
    && add-apt-repository \
           "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
              $(lsb_release -cs) \
              stable" \
    && apt update \
    && apt install -y docker-ce  \
    && gpasswd -a ${user} docker \
    && docker --version \
    && COMPOSE_VER=$(curl -s -o /dev/null -I -w "%{redirect_url}\n" https://github.com/docker/compose/releases/latest | grep -oP "[0-9]+(\.[0-9]+)+$") \
    && curl -L \
        https://github.com/docker/compose/releases/download/$COMPOSE_VER/docker-compose-$(uname -s)-$(uname -m) > \
        /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && docker-compose --version

CMD ["/bin/bash"]
