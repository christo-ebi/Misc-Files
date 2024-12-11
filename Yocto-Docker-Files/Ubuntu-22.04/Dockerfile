FROM ubuntu:22.04
CMD ["echo","Hello there"]
RUN apt update
RUN apt upgrade
RUN DEBIAN_FRONTEND="noninteractive" apt-get install --no-install-recommends -y gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 python3-subunit zstd liblz4-tool file locales libacl1 tmux neovim

#RUN echo 'root:Docker!' | chpasswd

RUN export LC_ALL="en_US.UTF-8"
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

# variables
ENV USER=dev
ENV USER_ID=1000
ENV PWD=docker
ENV WORKSPACE=/home/$USER/workspace

# add a user
RUN useradd -u $USER_ID -ms /bin/zsh $USER && \
    echo "$USER:$PWD" | chpasswd && adduser $USER sudo
USER $USER
