FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV sbt_version 0.13.13

RUN \
    add-apt-repository -y ppa:webupd8team/java \
    && apt update \
    && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections \
    && apt install -y oracle-java8-installer \
    && wget http://dl.bintray.com/sbt/debian/sbt-${sbt_version} -P /opt \
    && dpkg -i /opt/sbt-${sbt_version}.deb \
    && rm -f /opt/sbt-${sbt_version}.deb

ENTRYPOINT ["/bin/bash", "-C"]
