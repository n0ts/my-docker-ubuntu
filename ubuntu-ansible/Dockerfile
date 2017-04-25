FROM n0ts/ubuntu-python

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user ubuntu
ENV group ubuntu

RUN \
    apt install -y libffi-dev libssl-dev \
    && pip install ansible-lint \
    && pip install --upgrade ansible \

    # install human_log callback plugin
    # https://github.com/n0ts/ansible-human_log/
    && mkdir -p /usr/share/ansible/plugins/callback \
    && wget -N \
             https://raw.githubusercontent.com/n0ts/ansible-human_log/master/human_log.py \
             -P /usr/share/ansible/plugins/callback/ \

    # change ansible configuration
    && sed -i 's/#retry_files_enabled = False/retry_files_enabled = False/g' /etc/ansible/ansible.cfg \
    && sed -i 's/#library        = \/usr\/share\/my_modules\//library = \/ansible\/modules/g' /etc/ansible/ansible.cfg \
    && sed -i 's/sudo_user      = root/become_user      = root/g' /etc/ansible/ansible.cfg \

    # add ansible user & group
    && groupadd ansible \
    && gpasswd -a ${user} ansible \
    && mkdir -m 770 /var/log/ansible \
    && touch /var/log/ansible/ansible.log \
    && chmod 660 /var/log/ansible/ansible.log \
    && chown -v -R root:${group} /var/log/ansible \
    && sed -i 's/#log_path = \/var\/log\/ansible.log/log_path = \/var\/log\/ansible\/ansible.log/g' /etc/ansible/ansible.cfg \

    && ansible-lint --version \
    && ansible --version

CMD ["/bin/bash"]
