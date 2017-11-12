FROM ruby:2.5.3-alpine
LABEL MAINTAINER="ahiru3net"

ARG WORK_DIR="/home/mikutter"

ARG USER_NAME="mikutter"
ARG USER_ID="1000"

RUN set -x \
    && apk upgrade --update \
    && apk --no-cache add \
      gcc musl-dev make g++ file alpine-sdk git \
      gtk+2.0-dev gobject-introspection-dev \
	&& adduser -D -u ${USER_ID} -h ${WORK_DIR} ${USER_NAME}

USER ${USER_NAME}

WORKDIR ${WORK_DIR}

RUN set -x && \
	git clone git://toshia.dip.jp/mikutter.git && \
    cd mikutter && \
    git checkout develop && \
    bundle install
