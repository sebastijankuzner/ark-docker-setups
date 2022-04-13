FROM node

WORKDIR /core

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    build-essential \
    jq \
    iptables \
    python \
    vim \
    openssh-server && \
    rm -rf /var/lib/apt/lists/* \
    && cd /core && npm add -g pnpm

RUN mkdir /var/run/sshd
ADD authorized_keys /root/.ssh/authorized_keys
RUN chown root /root/.ssh/authorized_keys
RUN chown -R root:root /root/.ssh/authorized_keys
RUN chmod 700 /root/.ssh/authorized_keys

CMD    ["/usr/sbin/sshd", "-D"]


# ENV USER ubuntu
# RUN mkdir /var/run/sshd
# RUN adduser --disabled-password --gecos "" $USER
# RUN adduser $USER sudo
# ADD authorized_keys /home/$USER/.ssh/authorized_keys
# RUN chown $USER /home/$USER/.ssh/authorized_keys
# RUN chown -R $USER:$USER /home/$USER/.ssh/authorized_keys
# RUN chmod 700 /home/$USER/.ssh/authorized_keys

# CMD    ["/usr/sbin/sshd", "-D"]