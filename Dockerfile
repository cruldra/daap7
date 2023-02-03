FROM nimmis/alpine-apache
MAINTAINER cruldra <cruldra@gmail.com>
ENV TZ=Asia/Shanghai
RUN apk update && \
    apk add curl && \
    apk add openrc  php7 php7-apache2 php7-openssl php7-mbstring && \
    apk add php7-apcu php7-intl php7-mcrypt php7-json php7-gd php7-curl && \
    apk add php7-fpm php7-mysqlnd php7-pgsql php7-sqlite3 php7-phar php7-session php7-pdo_mysql && \
    # install timezone \
    apk add tzdata && \
    cp /usr/share/zoneinfo/${TZ} /etc/localtime  && \
    echo ${TZ} > /etc/timezone && \
    # install composer
    cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && \
    #clear cache
    rm -rf /var/cache/apk/*
    #apk del tzdata
