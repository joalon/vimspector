FROM puremourning/vimspector:test

RUN apt-get update && \
  apt-get -y dist-upgrade && \
  apt-get -y install sudo

## cleanup of files from setup
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -ms /bin/bash -d /home/dev -G sudo dev && \
    echo "dev:dev" | chpasswd && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/sudo

USER dev
WORKDIR /home/dev

ENV HOME /home/dev
ENV PYTHON_CONFIGURE_OPTS --enable-shared

ADD --chown=dev:dev .vim/ /home/dev/.vim/

RUN curl -o- \
         https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh \
    | bash

ENV NVM_DIR /home/dev/.nvm
RUN . ${NVM_DIR}/nvm.sh && \
    nvm install --lts 10 && \
    nvm alias default 10
