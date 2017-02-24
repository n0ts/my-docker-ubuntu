FROM ubuntu:latest

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user ubuntu
ENV group ubuntu
ENV work /work

RUN \
  apt update \
  && apt upgrade -y \
  && apt install -y build-essential curl emacs git \
                    less python silversearcher-ag \
                    software-properties-common sudo tree vim wget zsh \

  # add local user
  && groupadd ${user} \
  && useradd ${user} -g ${group} -m -s /bin/zsh \
  && echo "%${group} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/00-${group} \
  && chmod 400 /etc/sudoers.d/00-${group} \

  # create work directory
  && mkdir ${work} \
  && chown -R ${user}:${group} ${work}

ENTRYPOINT ["/bin/bash", "-C"]
