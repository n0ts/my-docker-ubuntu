FROM n0ts/ubuntu-docker

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN \
    curl -o /usr/local/bin/circleci https://circle-downloads.s3.amazonaws.com/releases/build_agent_wrapper/circleci \
    && chmod +x /usr/local/bin/circleci

CMD ["/bin/bash"]
