FROM ruby:2.4.1
MAINTAINER ahiru3net

RUN set -x && apt-get update && \
	apt-get install -y \
	libpango1.0-dev \
	libgtk2.0-dev \
	libatk1.0-dev \
	libgirepository1.0-dev \
	git \
	vim \
	build-essential \
	sudo

# add group and user
RUN set -x && groupadd --system -g 1000 mikutter && \
	useradd -m -s /bin/bash -g mikutter -u 1000 -d /home/mikutter mikutter && \
	echo mikutter:mikutter | chpasswd && \
	echo '/usr/local/bundle ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/mikutter && \
	chmod 0440 /etc/sudoers.d/mikutter && \
    	chown -R mikutter:mikutter /usr/local/bundle

USER mikutter
ENV WORKDIR /home/mikutter
ENV HOME /home/mikutter

RUN set -x && \
	cd "$HOME" && \
	git clone git://toshia.dip.jp/mikutter.git && \
    	cd mikutter && \
    	git checkout develop && \
    	bundle install
