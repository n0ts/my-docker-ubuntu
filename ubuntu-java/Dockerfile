FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
    && add-apt-repository -y ppa:webupd8team/java \
    && apt update \
    && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections \
    && apt install -y oracle-java8-installer \
    && java -version

CMD ["/bin/bash"]
