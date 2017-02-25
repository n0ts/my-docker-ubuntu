FROM n0ts/ubuntu-java

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV scala_version 2.12.1
ENV sbt_version 0.13.13

RUN \
    # install scala
    wget http://www.scala-lang.org/files/archive/scala-${scala_version}.deb -P /opt \
    && dpkg -i /opt/scala-${scala_version}.deb \
    && rm -f /opt/scala-${scala_version}.deb \

    # install sbt
    && wget http://dl.bintray.com/sbt/debian/sbt-${sbt_version}.deb -P /opt \
    && dpkg -i /opt/sbt-${sbt_version}.deb \
    && rm -f /opt/sbt-${sbt_version}.deb

CMD ["/bin/bash"]
