FROM node:10.17-slim
MAINTAINER Kaloneh <kaloneh@gmail.com>

RUN apt-get update && apt-get install -qq -y \
  build-essential libpq-dev --no-install-recommends

ENV INSTALL_PATH /BuildTravelCards
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY package.json package.json
RUN npm install

COPY . .

CMD npm start
