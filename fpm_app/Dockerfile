FROM php:7.1-fpm

RUN apt-get update
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y curl
RUN apt-get install -y libjpeg62-turbo-dev
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install zip
RUN docker-php-ext-install bcmath
RUN docker-php-ext-configure gd --with-png-dir=/usr/include --with-jpeg-dir=/usr/include
RUN docker-php-ext-install gd

COPY yii.conf  /usr/local/etc/

RUN usermod -u 1000 www-data

EXPOSE 9000
CMD ["php-fpm", "-F"]
