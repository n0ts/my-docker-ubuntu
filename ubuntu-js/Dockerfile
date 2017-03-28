FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

COPY xvfb /etc/init.d/
COPY google-chrome-launcher /usr/local/bin/

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/lcoal/bin/google-chrome-launcher

RUN \
    curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt install -y nodejs \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
    && apt update \
    && apt install -y google-chrome-stable xvfb \
    && export DISPLAY=$DISPLAY \
    && export CHROME_BIN=$CHROME_BIN \
    && sh -e /etc/init.d/xvfb start \
    && ps aux | grep Xvfb \
    && ver=$(curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE) \
    && wget -O /opt/chromedriver.zip http://chromedriver.storage.googleapis.com/$ver/chromedriver_linux64.zip \
    && unzip /opt/chromedriver.zip chromedriver -d /usr/local/bin/ \
    && rm -f /top/chromedriver.zip

CMD ["/bin/bash"]
