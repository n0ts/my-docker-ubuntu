FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV JAVA_VERSION 9

RUN set -x \
    && add-apt-repository -y ppa:webupd8team/java \
    && apt update \
    && echo "oracle-java${JAVA_VERSION}-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections \
    && apt install -y oracle-java${JAVA_VERSION}-installer \
    && java -version

CMD ["/bin/bash"]
