FROM n0ts/ubuntu-python

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user ubuntu

RUN \
    apt install -y libffi-dev libssl-dev \
    && pip install ansible ansible-lint \
    && ansible --version \
    && ansible-lint --version

CMD ["/bin/bash"]
