FROM n0ts/ubuntu

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
  && apt install -y python python-dev python-pip python-virtualenv \
  && pip install --upgrade pip \
  && pip install jq \
  && python --version \
  && pip --version

CMD ["/bin/bash"]
