FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN \
    curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt install -y nodejs \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
    && apt update \
    && apt install -y google-chrome-stable xvfb \
    && cp ./xvfb /etc/init.d/ \
    && cp ./google-chrome-launcher /usr/local/bin \
    && export DISPLAY=":99.0" \ 
    && export CHROME_BIN=/usr/lcoal/bin/google-chrome-launcher \
    && sh -e /etc/init.d/xvfb start \
    && ver=$(curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE) \
    && wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/$ver/chromedriver_linux64.zip \
    && unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/ \
    && rm -f /tmp/chromedriver.zip

ENTRYPOINT ["/bin/bash", "-C"]
nnnn