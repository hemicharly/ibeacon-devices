FROM node:12.20.1-buster-slim

RUN apt-get update && \
    apt-get install -y \
    bluetooth \
    bluez \
    libbluetooth-dev \
    libudev-dev && \
    rm -rf /var/lib/apt/lists/*

COPY docker/entrypoint.sh /usr/local/bin
RUN chmod -R 777 /usr/local/bin/entrypoint.sh

ENV APP_HOME /application

WORKDIR $APP_HOME


ENTRYPOINT ["entrypoint.sh"]