FROM ruby:2.5.3-alpine
LABEL MAINTAINER="ahiru3net"

ARG WORK_DIR="/home/mikutter"

ARG USER_NAME="mikutter"
ARG USER_ID="1000"

RUN set -x \
    && apk upgrade --update \
    && apk --no-cache add --virtual .mikutdeps \
      gcc musl-dev make g++ file alpine-sdk git \
      gtk+2.0-dev gobject-introspection-dev libidn-dev libidn \
      glib curl fontconfig \
	&& adduser -D -u ${USER_ID} -h ${WORK_DIR} ${USER_NAME} \
    && curl -O https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
    && mkdir -p /usr/share/fonts/NotoSansCJKjp \
    && unzip NotoSansCJKjp-hinted.zip -d /usr/share/fonts/NotoSansCJKjp/ \
    && rm NotoSansCJKjp-hinted.zip \
    && fc-cache -fv

WORKDIR ${WORK_DIR}

RUN set -x \
    && su mikutter \
    && git clone git://toshia.dip.jp/mikutter.git \
    && cd mikutter \
    && git checkout develop \
    && chown -R mikutter:mikutter ./ \
    && rm -r core/plugin/gtk \
    && rm -r core/plugin/gui \
    && bundle install

# RUN set -x \
#     && apk del --purge .mikutdeps

USER ${USER_NAME}
