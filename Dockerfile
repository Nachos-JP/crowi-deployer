FROM node:8.11.2-alpine

ARG PROXY

ENV http_proxy $PROXY
ENV https_proxy $PROXY
ENV NODE_ENV production

WORKDIR /home/crowi

RUN apk update && \
  apk add git curl wget && \
  git clone -b v1.7.9 https://github.com/crowi/crowi.git --depth 1 . && \
  npm install --update npm@latest -g && \
  npm install && \
  npm run build
