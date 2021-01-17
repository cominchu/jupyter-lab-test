FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less \
    nodejs ca-certificates musl-dev gcc python-dev make cmake g++ gfortran libpng-dev libfreetype6-dev libxml2-dev libxslt-dev npm
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools