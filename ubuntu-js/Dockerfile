FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

COPY xvfb /etc/init.d/
COPY google-chrome-launcher /usr/local/bin/

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/local/bin/google-chrome-launcher

#RUN \
RUN    curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN    apt install -y nodejs
RUN    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN    apt update
RUN    apt install -y google-chrome-stable 
RUN /etc/init.d/xvfb start 
RUN   ver=$(curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE) \
      && wget -O /opt/chromedriver.zip http://chromedriver.storage.googleapis.com/$ver/chromedriver_linux64.zip
RUN   unzip /opt/chromedriver.zip chromedriver -d /usr/local/bin/
RUN rm -f /opt/chromedriver.zip

CMD ["/bin/bash"]
