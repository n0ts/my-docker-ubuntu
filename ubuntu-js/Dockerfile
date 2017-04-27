FROM n0ts/ubuntu-java

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 800
ENV SCREEN_DEPTH 24
ENV DISPLAY :99.0

COPY xvfb /usr/local/bin/
COPY entry_point.sh /usr/local/bin/

RUN set -x \
    && curl -s -L https://deb.nodesource.com/setup_7.x | bash - \
    && apt install -y python nodejs xvfb \
    && curl -s -L https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && add-apt-repository \
           "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && add-apt-repository \
           "deb https://dl.yarnpkg.com/debian/ stable main" \
    && apt update \
    && apt install -y google-chrome-stable yarn \
    && /opt/google/chrome/chrome --version \
    && yarn --version \
    && ver=$(curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE) \
    && curl -L -o /opt/chromedriver.zip http://chromedriver.storage.googleapis.com/$ver/chromedriver_linux64.zip \
    && unzip -o /opt/chromedriver.zip chromedriver -d /usr/local/bin/ \
    && chromedriver --version \
    && rm -f /opt/chromedriver.zip \
    && mv /opt/google/chrome/chrome /opt/google/chrome/_chrome

COPY chrome-launcher /opt/google/chrome/chrome

CMD ["/usr/local/bin/entry_point.sh"]
