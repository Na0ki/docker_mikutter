FROM ruby:2.4.1
MAINTAINER ahiru3net

RUN set -x && \ 
	apt-get update && \
	apt-get install -V -y \
	libpango1.0-dev \
	libgtk2.0-dev \
	libatk1.0-dev \
	libgirepository1.0-dev \
	git \
	vim \
	build-essential

# add user mikutter
RUN useradd -ms /bin/bash mikutter && \
	echo mikutter:mikutter | chpasswd && \
	echo '/usr/local/bundle ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    	chown -R mikutter:mikutter /usr/local/bundle

USER mikutter
ENV WORKDIR /home/mikutter
ENV HOME /home/mikutter

RUN cd "$HOME" && \
    git clone git://toshia.dip.jp/mikutter.git && \
    cd mikutter && \
    git checkout develop && \
    bundle install

