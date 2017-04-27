FROM n0ts/ubuntu-java

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
    # install scala
    && SCALA_VER=$(curl -s -o /dev/null -I -w "%{redirect_url}\n" https://github.com/scala/scala/releases/latest | grep -oP "[0-9]+.[0-9]+.[0-9]+$") \
    && curl -L -o /opt/scala-$SCALA_VER.deb \
           https://www.scala-lang.org/files/archive/scala-$SCALA_VER.deb \
    && dpkg -i /opt/scala-$SCALA_VER.deb \
    && rm -f /opt/scala-$SCALA_VER.deb \

    # install sbt
    && SBT_VER=$(curl -s -o /dev/null -I -w "%{redirect_url}\n" https://github.com/sbt/sbt/releases/latest | grep -oP "[0-9]+.[0-9]+.[0-9]+$") \
    && curl -L -o /opt/sbt-$SBT_VER.tgz \
           https://github.com/sbt/sbt/releases/download/v0.13.15/sbt-$SBT_VER.tgz \
    && tar xvzf /opt/sbt-$SBT_VER.tgz -C /opt \
    && rm -f /opt/sbt-$SBT_VER.tgz \
    && ln -s /opt/sbt/bin/sbt /usr/local/bin/sbt \
    && sbt about

CMD ["/bin/bash"]
