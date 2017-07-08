FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
    && apt-add-repository ppa:brightbox/ruby-ng \
    && apt update \
    && apt -y install ruby2.4 ruby2.4-dev libxml2-dev zlib1g-dev \
    && gem install --no-document bundler \
    && ruby --version \
    && gem --version

CMD ["/bin/bash"]
