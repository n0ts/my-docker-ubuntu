FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user ubuntu

RUN \
    DOCKER_VER=$(curl -s -o /dev/null -I -w "%{redirect_url}\n" https://github.com/moby/moby/releases/latest | grep -oP "[0-9]+.[0-9]+(\.[0-9])-ce+$") \
    && curl -L -o /tmp/docker-$DOCKER_VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VER.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$DOCKER_VER.tgz \
    && mv /tmp/docker/* /usr/bin  \

#    && gpasswd -a ${user} docker \
    && docker --version \
    && docker ps

    # install latest docker-compose
#    && COMPOSE_VER=$(curl -s -o /dev/null -I -w "%{redirect_url}\n" https://github.com/docker/compose/releases/latest | grep -oP "[0-9]+(\.[0-9]+)+$") \
#    && curl -L \
#        https://github.com/docker/compose/releases/download/$COMPOSE_VER/docker-compose-$(uname -s)-$(uname -m) > \
#        /usr/local/bin/docker-compose \
#    && chmod +x /usr/local/bin/docker-compose \
#    && docker-compose --version

CMD ["/bin/bash"]
