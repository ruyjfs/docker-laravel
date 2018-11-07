FROM alpine
MAINTAINER ruy@devsquad.com
WORKDIR /var/www
RUN apk update && apk upgrade && apk add --no-cache git curl openssl \
    php7 php7-fpm php7-opcache php7-json php7-phar php7-iconv php7-openssl php7-zlib php7-simplexml php7-tokenizer php7-xmlwriter php7-dom php7-mbstring \
    php7-pdo_pgsql php7-session php7-ctype php7-curl \
    php7-xml php7-gd php7-pcntl php7-posix php7-fileinfo php7-intl php7-soap php7-pdo_mysql \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer && chmod +x /usr/local/bin/composer
RUN echo "upload_max_filesize = 50M" >> /etc/php7/php.ini
VOLUME /var/www
EXPOSE 80
