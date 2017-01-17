FROM ruby:2.3.3
MAINTAINER ahiru3net

RUN apt-get install -V -y libatk1.0-dev

USER mikutter
ENV WORKDIR /home/mikutter
ENV HOME /home/mikutter

RUN cd "$HOME" \
    && git clone git://toshia.dip.jp/mikutter.git \
    && cd mikutter \
    && git checkout develop \
    && bundle install

CMD [ "/bin/bash" ]