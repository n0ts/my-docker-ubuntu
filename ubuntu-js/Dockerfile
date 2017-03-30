FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

COPY xvfb /usr/local/bin/
COPY xvfb.service /etc/systemd/system/
COPY google-chrome-launcher /usr/local/bin/

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/local/bin/google-chrome-launcher

RUN \
    curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt install -y nodejs \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
    && apt update \
    && apt install -y google-chrome-stable \
    && ver=$(curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE) \
    && wget -O /opt/chromedriver.zip http://chromedriver.storage.googleapis.com/$ver/chromedriver_linux64.zip \
    && unzip -o /opt/chromedriver.zip chromedriver -d /usr/local/bin/ \
    && rm -f /opt/chromedriver.zip \
    && ln -sf /etc/systemd/system/xvfb.service /etc/systemd/system/multi-user.target.wants/xvfb.service \
    && systemctl enable xvfb.service

CMD ["/bin/bash"]
