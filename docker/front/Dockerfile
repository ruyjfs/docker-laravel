FROM alpine
MAINTAINER ruy@devsquad.com
WORKDIR /var/www
RUN apk add --update --upgrade \
           bash \
           libpng-dev \
           gcc \
           g++ \
           libc-dev \
           make \
           git \
           nodejs \
           nodejs-npm \
&& npm install -g yarn vue-cli stylus
